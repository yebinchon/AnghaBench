
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int quirks; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int USB_QUIRK_RESET ;
 int sprintf (char*,char*,int) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t avoid_reset_quirk_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct usb_device *udev;

 udev = to_usb_device(dev);
 return sprintf(buf, "%d\n", !!(udev->quirks & USB_QUIRK_RESET));
}
