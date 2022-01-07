
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;


 int kfifo_avail (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int oti6858_write_room(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 int room = 0;
 unsigned long flags;

 spin_lock_irqsave(&port->lock, flags);
 room = kfifo_avail(&port->write_fifo);
 spin_unlock_irqrestore(&port->lock, flags);

 return room;
}
