#
# Copyright (C) 2019 The LineageOS Project
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
#

# Inherit common device config
$(call inherit-product, device/xiaomi/mt6765-common/mt6765.mk)

# Inherit proprietary parts
$(call inherit-product, vendor/xiaomi/cactus/cactus-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

MINIMEDIA_SENSORSERVER_DISABLE := 1

PRODUCT_PACKAGES += \
    libmedia_omx \
    android.frameworks.displayservice@1.0

PRODUCT_PACKAGES += \
    libion \
    libmedia_compat_layer \
    libsf_compat_layer \
    libui_compat_layer

# SalifishOS droidmedia
PRODUCT_PACKAGES += \
    libdroidmedia \
    minimediaservice \
    minisfservice \
    miniafservice

# Ubuntu
PRODUCT_PACKAGES += \
    libbiometry_fp_api \
    libubuntu_application_api
