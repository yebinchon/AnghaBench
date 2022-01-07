
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial {TYPE_2__* interface; } ;
struct usb_interface_descriptor {scalar_t__ bInterfaceClass; int bNumEndpoints; int bInterfaceNumber; } ;
struct usb_device_id {unsigned long driver_info; } ;
struct TYPE_4__ {TYPE_1__* cur_altsetting; } ;
struct TYPE_3__ {struct usb_interface_descriptor desc; } ;


 int ENODEV ;
 unsigned long NUMEP2 ;
 unsigned long RSVD (int ) ;
 scalar_t__ USB_CLASS_MASS_STORAGE ;
 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static int option_probe(struct usb_serial *serial,
   const struct usb_device_id *id)
{
 struct usb_interface_descriptor *iface_desc =
    &serial->interface->cur_altsetting->desc;
 unsigned long device_flags = id->driver_info;


 if (iface_desc->bInterfaceClass == USB_CLASS_MASS_STORAGE)
  return -ENODEV;






 if (device_flags & RSVD(iface_desc->bInterfaceNumber))
  return -ENODEV;





 if (device_flags & NUMEP2 && iface_desc->bNumEndpoints != 2)
  return -ENODEV;


 usb_set_serial_data(serial, (void *)device_flags);

 return 0;
}
