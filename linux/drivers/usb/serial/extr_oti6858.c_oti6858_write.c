
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;
struct tty_struct {int dummy; } ;


 int kfifo_in_locked (int *,unsigned char const*,int,int *) ;

__attribute__((used)) static int oti6858_write(struct tty_struct *tty, struct usb_serial_port *port,
   const unsigned char *buf, int count)
{
 if (!count)
  return count;

 count = kfifo_in_locked(&port->write_fifo, buf, count, &port->lock);

 return count;
}
