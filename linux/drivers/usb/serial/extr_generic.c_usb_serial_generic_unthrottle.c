
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int flags; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int GFP_KERNEL ;
 int USB_SERIAL_THROTTLED ;
 int clear_bit (int ,int *) ;
 int smp_mb () ;
 int usb_serial_generic_submit_read_urbs (struct usb_serial_port*,int ) ;

void usb_serial_generic_unthrottle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;

 clear_bit(USB_SERIAL_THROTTLED, &port->flags);





 smp_mb();

 usb_serial_generic_submit_read_urbs(port, GFP_KERNEL);
}
