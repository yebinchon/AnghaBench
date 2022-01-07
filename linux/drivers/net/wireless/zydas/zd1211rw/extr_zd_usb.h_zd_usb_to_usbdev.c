
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int intf; } ;
struct usb_device {int dummy; } ;


 struct usb_device* interface_to_usbdev (int ) ;

__attribute__((used)) static inline struct usb_device *zd_usb_to_usbdev(struct zd_usb *usb)
{
 return interface_to_usbdev(usb->intf);
}
