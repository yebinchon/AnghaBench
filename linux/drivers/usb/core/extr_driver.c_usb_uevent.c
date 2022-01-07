
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int bcdDevice; int idProduct; int idVendor; } ;
struct usb_device {scalar_t__ devnum; TYPE_1__ descriptor; int bus; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 scalar_t__ add_uevent_var (struct kobj_uevent_env*,char*,int ,int ,int ) ;
 int dev_name (struct device*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 scalar_t__ is_usb_device (struct device*) ;
 scalar_t__ is_usb_interface (struct device*) ;
 int le16_to_cpu (int ) ;
 int pr_debug (char*,int ) ;
 struct usb_device* to_usb_device (struct device*) ;
 struct usb_interface* to_usb_interface (struct device*) ;

__attribute__((used)) static int usb_uevent(struct device *dev, struct kobj_uevent_env *env)
{
 struct usb_device *usb_dev;

 if (is_usb_device(dev)) {
  usb_dev = to_usb_device(dev);
 } else if (is_usb_interface(dev)) {
  struct usb_interface *intf = to_usb_interface(dev);

  usb_dev = interface_to_usbdev(intf);
 } else {
  return 0;
 }

 if (usb_dev->devnum < 0) {

  pr_debug("usb %s: already deleted?\n", dev_name(dev));
  return -ENODEV;
 }
 if (!usb_dev->bus) {
  pr_debug("usb %s: bus removed?\n", dev_name(dev));
  return -ENODEV;
 }


 if (add_uevent_var(env, "PRODUCT=%x/%x/%x",
      le16_to_cpu(usb_dev->descriptor.idVendor),
      le16_to_cpu(usb_dev->descriptor.idProduct),
      le16_to_cpu(usb_dev->descriptor.bcdDevice)))
  return -ENOMEM;


 if (add_uevent_var(env, "TYPE=%d/%d/%d",
      usb_dev->descriptor.bDeviceClass,
      usb_dev->descriptor.bDeviceSubClass,
      usb_dev->descriptor.bDeviceProtocol))
  return -ENOMEM;

 return 0;
}
