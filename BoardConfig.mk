# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# inherit from common klte
include device/samsung/klte-common/BoardConfigCommon.mk

#PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_OTA_ASSERT_DEVICE := SC-04F,kltedcm,klte

# Kernel
TARGET_KERNEL_CONFIG := lineage_kltedcm_defconfig

# Fingerprint
include $(COMMON_PATH)/fingerprint/board.mk

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8974
TARGET_LIBINIT_MSM8974_DEFINES_FILE := device/samsung/kltedcm/init/init_klte.cpp

# NFC
include $(COMMON_PATH)/nfc/sony/board.mk

# Radio/RIL
include $(COMMON_PATH)/radio/single/board.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2548039680
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12442369024 # 12442385408 - 16384


# inherit from the proprietary version
-include vendor/samsung/kltedcm/BoardConfigVendor.mk
-include vendor/samsung/klte/BoardConfigVendor.mk
