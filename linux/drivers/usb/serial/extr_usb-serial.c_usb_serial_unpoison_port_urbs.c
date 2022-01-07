
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int num_ports; int * port; } ;


 int usb_serial_port_unpoison_urbs (int ) ;

__attribute__((used)) static void usb_serial_unpoison_port_urbs(struct usb_serial *serial)
{
 int i;

 for (i = 0; i < serial->num_ports; ++i)
  usb_serial_port_unpoison_urbs(serial->port[i]);
}
