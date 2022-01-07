
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct pl2303_private {int lock; int line_control; } ;


 int CONTROL_DTR ;
 int CONTROL_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int pl2303_set_control_lines (struct usb_serial_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pl2303_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int usb_translate_errors (int) ;

__attribute__((used)) static int pl2303_tiocmset(struct tty_struct *tty,
      unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct pl2303_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 control;
 int ret;

 spin_lock_irqsave(&priv->lock, flags);
 if (set & TIOCM_RTS)
  priv->line_control |= CONTROL_RTS;
 if (set & TIOCM_DTR)
  priv->line_control |= CONTROL_DTR;
 if (clear & TIOCM_RTS)
  priv->line_control &= ~CONTROL_RTS;
 if (clear & TIOCM_DTR)
  priv->line_control &= ~CONTROL_DTR;
 control = priv->line_control;
 spin_unlock_irqrestore(&priv->lock, flags);

 ret = pl2303_set_control_lines(port, control);
 if (ret)
  return usb_translate_errors(ret);

 return 0;
}
