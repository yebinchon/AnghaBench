
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int flags; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int USB_SERIAL_THROTTLED ;
 int set_bit (int ,int *) ;

void usb_serial_generic_throttle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;

 set_bit(USB_SERIAL_THROTTLED, &port->flags);
}
