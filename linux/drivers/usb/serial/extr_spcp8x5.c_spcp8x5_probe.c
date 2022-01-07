
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dummy; } ;
struct usb_device_id {int dummy; } ;


 int usb_set_serial_data (struct usb_serial*,void*) ;

__attribute__((used)) static int spcp8x5_probe(struct usb_serial *serial,
      const struct usb_device_id *id)
{
 usb_set_serial_data(serial, (void *)id);

 return 0;
}
