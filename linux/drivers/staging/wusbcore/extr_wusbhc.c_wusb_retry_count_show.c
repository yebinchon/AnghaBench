
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int retry_count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct wusbhc* usbhc_dev_to_wusbhc (struct device*) ;

__attribute__((used)) static ssize_t wusb_retry_count_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct wusbhc *wusbhc = usbhc_dev_to_wusbhc(dev);

 return sprintf(buf, "%d\n", wusbhc->retry_count);
}
