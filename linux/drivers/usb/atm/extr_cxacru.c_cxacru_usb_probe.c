
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ bDeviceClass; int iProduct; } ;
struct usb_device {TYPE_1__ descriptor; } ;
typedef int buf ;


 int ENODEV ;
 scalar_t__ USB_CLASS_VENDOR_SPEC ;
 int cxacru_driver ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int strcmp (char*,char*) ;
 scalar_t__ usb_string (struct usb_device*,int ,char*,int) ;
 int usbatm_usb_probe (struct usb_interface*,struct usb_device_id const*,int *) ;

__attribute__((used)) static int cxacru_usb_probe(struct usb_interface *intf,
  const struct usb_device_id *id)
{
 struct usb_device *usb_dev = interface_to_usbdev(intf);
 char buf[15];




 if (usb_dev->descriptor.bDeviceClass == USB_CLASS_VENDOR_SPEC
   && usb_string(usb_dev, usb_dev->descriptor.iProduct,
    buf, sizeof(buf)) > 0) {
  if (!strcmp(buf, "USB NET CARD")) {
   dev_info(&intf->dev, "ignoring cx82310_eth device\n");
   return -ENODEV;
  }
 }

 return usbatm_usb_probe(intf, id, &cxacru_driver);
}
