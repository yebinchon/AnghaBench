
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {scalar_t__* port; } ;
struct TYPE_2__ {scalar_t__ port; } ;


 int usb_serial_console_exit () ;
 int usb_serial_put (struct usb_serial*) ;
 TYPE_1__ usbcons_info ;

void usb_serial_console_disconnect(struct usb_serial *serial)
{
 if (serial->port[0] && serial->port[0] == usbcons_info.port) {
  usb_serial_console_exit();
  usb_serial_put(serial);
 }
}
