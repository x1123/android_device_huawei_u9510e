# Copyright (C) 2007 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_SPECIFIC_HEADER_PATH := device/huawei/u9510e/include


# Platform CPU

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

NEED_WORKAROUND_CORTEX_A9_745320 := true

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := k3v2oem1
TARGET_BOOTLOADER_BOARD_NAME := u9510e
# Kernel Build
TARGET_KERNEL_SOURCE := kernel/huawei/u9510e
TARGET_KERNEL_CONFIG := cm_u9510e_defconfig

# boot image build
BOARD_KERNEL_CMDLINE := console=ttyS0 vmalloc=384M k3v2_pmem=1 
BOARD_KERNEL_PAGESIZE := 2048 

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u9510e/bluetooth

TARGET_NO_RADIOIMAGE := true

# emmc partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 936452096
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5926551552
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_FLASH_BLOCK_SIZE := 131072


#Graphics
BOARD_EGL_CFG := device/huawei/u9510e/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true
# HWComposer
BOARD_USES_HWCOMPOSER := true
# WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi 
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"


## Audio
TARGET_PROVIDES_LIBAUDIO := true
#BOARD_USES_LEGACY_ALSA_AUDIO := true
#BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_ALSA_AUDIO:= true
#BOARD_USES_AUDIO_LEGACY = true


# Ril ## FIXED Me
BOARD_RIL_CLASS :=../../../device/huawei/u9510e/ril/MateRIL.java


# Camera
USE_CAMERA_STUB := true
USE_CAMERA_STUB := false
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB

## FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_FM_DEVICE := bcm4330
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO


# enable adb access from user builds
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

#USB and Vold
BOARD_MTP_DEVICE := "/dev/mtp_usb"
BOARD_VOLD_MAX_PARTITIONS := 19
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

###################################
#
## Recovery - BEGIN
#
###################################

TARGET_RECOVERY_INITRC := device/huawei/u9508/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/huawei/u9510e/recovery/etc/recovery.fstab
RECOVERY_FSTAB_VERSION := 2
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u9510e/recovery/recovery_keys.c
BOARD_RECOVERY_HANDLES_MOUNT := true
# RECOVERY_EXTEND_NANDROID_MENU 


TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
# to compile mmcutils
BOARD_HAS_LARGE_FILESYSTEM := true

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/virtual/android_usb/android0/f_mass_storage/lun/file"

HAVE_SELINUX := false
TW_FLASH_FROM_STORAGE := true

SP1_NAME := "cust"
SP1_BACKUP_METHOD := files
SP1_MOUNTABLE := 1
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Graphics 
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/k3_battery_monitor.1/power_supply/Battery"
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd_backlight0/brightness
TW_MAX_BRIGHTNESS := 255

# touch configs
#BOARD_TOUCH_RECOVERY := true
BOARD_RECOVERY_SWIPE := true

# dual storage configuration
RECOVERY_SDCARD_ON_DATA := true 
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "/sdcard"
#TW_INTERNAL_STORAGE_PATH := "/data/share"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "/data"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/hi_mci.1/by-name/userdata"
#TW_CRYPTO_MNT_POINT := "/data"

###################################
#
## Recovery - END
#
###################################

# inherit from the proprietary version
include vendor/huawei/u9510e/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := u9510e

