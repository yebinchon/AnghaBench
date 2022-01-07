
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mct_u232_private {unsigned int control_state; int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int mct_u232_tiocmget(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct mct_u232_private *priv = usb_get_serial_port_data(port);
 unsigned int control_state;
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 control_state = priv->control_state;
 spin_unlock_irqrestore(&priv->lock, flags);

 return control_state;
}
