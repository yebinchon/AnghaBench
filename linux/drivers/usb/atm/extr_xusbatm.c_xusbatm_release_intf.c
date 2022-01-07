
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;


 int usb_driver_release_interface (int *,struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int xusbatm_usb_driver ;

__attribute__((used)) static void xusbatm_release_intf(struct usb_device *usb_dev, struct usb_interface *intf, int claimed)
{
 if (claimed) {
  usb_set_intfdata(intf, ((void*)0));
  usb_driver_release_interface(&xusbatm_usb_driver, intf);
 }
}
