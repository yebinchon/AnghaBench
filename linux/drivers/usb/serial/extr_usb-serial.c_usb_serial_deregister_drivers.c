
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_driver {struct usb_driver* usb_driver; } ;
struct usb_driver {int dummy; } ;


 int kfree (struct usb_driver*) ;
 int usb_deregister (struct usb_driver*) ;
 int usb_serial_deregister (struct usb_serial_driver* const) ;

void usb_serial_deregister_drivers(struct usb_serial_driver *const serial_drivers[])
{
 struct usb_driver *udriver = (*serial_drivers)->usb_driver;

 for (; *serial_drivers; ++serial_drivers)
  usb_serial_deregister(*serial_drivers);
 usb_deregister(udriver);
 kfree(udriver);
}
