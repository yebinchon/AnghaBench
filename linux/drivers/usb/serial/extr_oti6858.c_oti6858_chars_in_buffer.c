
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int kfifo_len (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int oti6858_chars_in_buffer(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 int chars = 0;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 chars = kfifo_len(&port->write_fifo);
 spin_unlock_irqrestore(&port->lock, flags);

 return chars;
}
