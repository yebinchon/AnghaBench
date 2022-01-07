
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct metrousb_private {int throttled; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct metrousb_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void metrousb_throttle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct metrousb_private *metro_priv = usb_get_serial_port_data(port);
 unsigned long flags = 0;


 spin_lock_irqsave(&metro_priv->lock, flags);
 metro_priv->throttled = 1;
 spin_unlock_irqrestore(&metro_priv->lock, flags);
}
