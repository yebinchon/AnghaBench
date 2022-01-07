
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_config {char* string; } ;
struct usb_device {struct usb_host_config* actconfig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ sprintf (char*,char*,char*) ;
 struct usb_device* to_usb_device (struct device*) ;
 scalar_t__ usb_lock_device_interruptible (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static ssize_t configuration_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct usb_device *udev;
 struct usb_host_config *actconfig;
 ssize_t rc;

 udev = to_usb_device(dev);
 rc = usb_lock_device_interruptible(udev);
 if (rc < 0)
  return -EINTR;
 actconfig = udev->actconfig;
 if (actconfig && actconfig->string)
  rc = sprintf(buf, "%s\n", actconfig->string);
 usb_unlock_device(udev);
 return rc;
}
