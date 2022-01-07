
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int quirks; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINTR ;
 size_t EINVAL ;
 int USB_QUIRK_RESET ;
 int sscanf (char const*,char*,int*) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_lock_device_interruptible (struct usb_device*) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static ssize_t avoid_reset_quirk_store(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct usb_device *udev = to_usb_device(dev);
 int val, rc;

 if (sscanf(buf, "%d", &val) != 1 || val < 0 || val > 1)
  return -EINVAL;
 rc = usb_lock_device_interruptible(udev);
 if (rc < 0)
  return -EINTR;
 if (val)
  udev->quirks |= USB_QUIRK_RESET;
 else
  udev->quirks &= ~USB_QUIRK_RESET;
 usb_unlock_device(udev);
 return count;
}
