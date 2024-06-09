#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 1714 device
$(call inherit-product, device/vivo/1714/device.mk)

PRODUCT_DEVICE := 1714
PRODUCT_NAME := omni_1714
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1714
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_bbk6750_66_n-user 7.0 NRD90M 1596616720 release-keys"

BUILD_FINGERPRINT := vivo/1714/1714:7.0/NRD90M/1596616720:user/release-keys
