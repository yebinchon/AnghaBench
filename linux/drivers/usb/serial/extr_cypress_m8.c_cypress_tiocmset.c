
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct cypress_private {int cmd_ctrl; int lock; int line_control; } ;


 int CONTROL_DTR ;
 int CONTROL_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int cypress_write (struct tty_struct*,struct usb_serial_port*,int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cypress_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int cypress_tiocmset(struct tty_struct *tty,
          unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct cypress_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (set & TIOCM_RTS)
  priv->line_control |= CONTROL_RTS;
 if (set & TIOCM_DTR)
  priv->line_control |= CONTROL_DTR;
 if (clear & TIOCM_RTS)
  priv->line_control &= ~CONTROL_RTS;
 if (clear & TIOCM_DTR)
  priv->line_control &= ~CONTROL_DTR;
 priv->cmd_ctrl = 1;
 spin_unlock_irqrestore(&priv->lock, flags);

 return cypress_write(tty, port, ((void*)0), 0);
}
