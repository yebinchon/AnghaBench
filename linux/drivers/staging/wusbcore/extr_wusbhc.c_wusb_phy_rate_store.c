
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct wusbhc {scalar_t__ phy_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ UWB_PHY_RATE_INVALID ;
 int sscanf (char const*,char*,scalar_t__*) ;
 struct wusbhc* usbhc_dev_to_wusbhc (struct device*) ;

__attribute__((used)) static ssize_t wusb_phy_rate_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct wusbhc *wusbhc = usbhc_dev_to_wusbhc(dev);
 uint8_t phy_rate;
 ssize_t result;

 result = sscanf(buf, "%hhu", &phy_rate);
 if (result != 1)
  return -EINVAL;
 if (phy_rate >= UWB_PHY_RATE_INVALID)
  return -EINVAL;

 wusbhc->phy_rate = phy_rate;
 return size;
}
