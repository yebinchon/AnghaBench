
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct cypress_private {int lock; int rx_flags; } ;


 int THROTTLED ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct cypress_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void cypress_throttle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct cypress_private *priv = usb_get_serial_port_data(port);

 spin_lock_irq(&priv->lock);
 priv->rx_flags = THROTTLED;
 spin_unlock_irq(&priv->lock);
}
