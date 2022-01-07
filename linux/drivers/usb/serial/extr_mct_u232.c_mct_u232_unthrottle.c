
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct mct_u232_private {int rx_flags; unsigned int control_state; int lock; } ;


 scalar_t__ C_CRTSCTS (struct tty_struct*) ;
 int THROTTLED ;
 unsigned int TIOCM_RTS ;
 int mct_u232_set_modem_ctrl (struct usb_serial_port*,unsigned int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct mct_u232_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void mct_u232_unthrottle(struct tty_struct *tty)
{
 struct usb_serial_port *port = tty->driver_data;
 struct mct_u232_private *priv = usb_get_serial_port_data(port);
 unsigned int control_state;

 spin_lock_irq(&priv->lock);
 if ((priv->rx_flags & THROTTLED) && C_CRTSCTS(tty)) {
  priv->rx_flags &= ~THROTTLED;
  priv->control_state |= TIOCM_RTS;
  control_state = priv->control_state;
  spin_unlock_irq(&priv->lock);
  mct_u232_set_modem_ctrl(port, control_state);
 } else {
  spin_unlock_irq(&priv->lock);
 }
}
