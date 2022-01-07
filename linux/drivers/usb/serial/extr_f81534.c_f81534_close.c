
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int * read_urbs; int lock; int write_fifo; int * write_urbs; TYPE_1__* serial; } ;
struct f81534_serial_private {int urb_mutex; int opened_port; } ;
struct TYPE_2__ {struct usb_serial_port** port; } ;


 size_t ARRAY_SIZE (int *) ;
 int kfifo_reset_out (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct f81534_serial_private* usb_get_serial_data (TYPE_1__*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void f81534_close(struct usb_serial_port *port)
{
 struct f81534_serial_private *serial_priv =
   usb_get_serial_data(port->serial);
 struct usb_serial_port *port0 = port->serial->port[0];
 unsigned long flags;
 size_t i;

 usb_kill_urb(port->write_urbs[0]);

 spin_lock_irqsave(&port->lock, flags);
 kfifo_reset_out(&port->write_fifo);
 spin_unlock_irqrestore(&port->lock, flags);


 mutex_lock(&serial_priv->urb_mutex);
 serial_priv->opened_port--;

 if (!serial_priv->opened_port) {
  for (i = 0; i < ARRAY_SIZE(port0->read_urbs); ++i)
   usb_kill_urb(port0->read_urbs[i]);
 }

 mutex_unlock(&serial_priv->urb_mutex);
}
