
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; scalar_t__ bInterfaceClass; scalar_t__ bDeviceClass; scalar_t__ idProduct; scalar_t__ idVendor; } ;


 scalar_t__ usb_match_one_id (struct usb_interface*,struct usb_device_id const*) ;

const struct usb_device_id *usb_match_id(struct usb_interface *interface,
      const struct usb_device_id *id)
{

 if (id == ((void*)0))
  return ((void*)0);






 for (; id->idVendor || id->idProduct || id->bDeviceClass ||
        id->bInterfaceClass || id->driver_info; id++) {
  if (usb_match_one_id(interface, id))
   return id;
 }

 return ((void*)0);
}
