
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_out_urb; int interrupt_in_urb; int * write_urbs; int * read_urbs; } ;


 int ARRAY_SIZE (int *) ;
 int usb_unpoison_urb (int ) ;

__attribute__((used)) static void usb_serial_port_unpoison_urbs(struct usb_serial_port *port)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(port->read_urbs); ++i)
  usb_unpoison_urb(port->read_urbs[i]);
 for (i = 0; i < ARRAY_SIZE(port->write_urbs); ++i)
  usb_unpoison_urb(port->write_urbs[i]);

 usb_unpoison_urb(port->interrupt_in_urb);
 usb_unpoison_urb(port->interrupt_out_urb);
}
