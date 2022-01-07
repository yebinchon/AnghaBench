
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int removable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;




 int sprintf (char*,char*,char*) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t removable_show(struct device *dev, struct device_attribute *attr,
         char *buf)
{
 struct usb_device *udev;
 char *state;

 udev = to_usb_device(dev);

 switch (udev->removable) {
 case 128:
  state = "removable";
  break;
 case 129:
  state = "fixed";
  break;
 default:
  state = "unknown";
 }

 return sprintf(buf, "%s\n", state);
}
