
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int * read_urbs; scalar_t__ bulk_in_size; int lock; int write_fifo; int * write_urbs; scalar_t__ bulk_out_size; } ;


 int ARRAY_SIZE (int *) ;
 int kfifo_reset_out (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_kill_urb (int ) ;

void usb_serial_generic_close(struct usb_serial_port *port)
{
 unsigned long flags;
 int i;

 if (port->bulk_out_size) {
  for (i = 0; i < ARRAY_SIZE(port->write_urbs); ++i)
   usb_kill_urb(port->write_urbs[i]);

  spin_lock_irqsave(&port->lock, flags);
  kfifo_reset_out(&port->write_fifo);
  spin_unlock_irqrestore(&port->lock, flags);
 }
 if (port->bulk_in_size) {
  for (i = 0; i < ARRAY_SIZE(port->read_urbs); ++i)
   usb_kill_urb(port->read_urbs[i]);
 }
}
