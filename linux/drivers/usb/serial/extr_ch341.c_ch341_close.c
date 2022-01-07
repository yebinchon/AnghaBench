
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;


 int usb_kill_urb (int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void ch341_close(struct usb_serial_port *port)
{
 usb_serial_generic_close(port);
 usb_kill_urb(port->interrupt_in_urb);
}
