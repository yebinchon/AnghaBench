
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {scalar_t__ bulk_in_size; int flags; } ;
struct tty_struct {int dummy; } ;


 int GFP_KERNEL ;
 int USB_SERIAL_THROTTLED ;
 int clear_bit (int ,int *) ;
 int usb_serial_generic_submit_read_urbs (struct usb_serial_port*,int ) ;

int usb_serial_generic_open(struct tty_struct *tty, struct usb_serial_port *port)
{
 int result = 0;

 clear_bit(USB_SERIAL_THROTTLED, &port->flags);

 if (port->bulk_in_size)
  result = usb_serial_generic_submit_read_urbs(port, GFP_KERNEL);

 return result;
}
