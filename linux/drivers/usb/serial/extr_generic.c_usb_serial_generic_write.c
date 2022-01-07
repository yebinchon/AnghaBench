
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; int bulk_out_size; } ;
struct tty_struct {int dummy; } ;


 int ENODEV ;
 int GFP_ATOMIC ;
 int kfifo_in_locked (int *,unsigned char const*,int,int *) ;
 int usb_serial_generic_write_start (struct usb_serial_port*,int ) ;

int usb_serial_generic_write(struct tty_struct *tty,
 struct usb_serial_port *port, const unsigned char *buf, int count)
{
 int result;

 if (!port->bulk_out_size)
  return -ENODEV;

 if (!count)
  return 0;

 count = kfifo_in_locked(&port->write_fifo, buf, count, &port->lock);
 result = usb_serial_generic_write_start(port, GFP_ATOMIC);
 if (result)
  return result;

 return count;
}
