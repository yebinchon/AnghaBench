
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int intf; } ;
struct usb_device {int dummy; } ;


 struct usb_device* interface_to_usbdev (int ) ;
 int scnprint_id (struct usb_device*,char*,size_t) ;

int zd_usb_scnprint_id(struct zd_usb *usb, char *buffer, size_t size)
{
 struct usb_device *udev = interface_to_usbdev(usb->intf);
 return scnprint_id(udev, buffer, size);
}
