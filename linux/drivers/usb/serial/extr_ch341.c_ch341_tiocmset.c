
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usb_serial_port {TYPE_1__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct ch341_private {int lock; int mcr; } ;
struct TYPE_2__ {int dev; } ;


 int CH341_BIT_DTR ;
 int CH341_BIT_RTS ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int ch341_set_handshake (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int ch341_tiocmset(struct tty_struct *tty,
     unsigned int set, unsigned int clear)
{
 struct usb_serial_port *port = tty->driver_data;
 struct ch341_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;
 u8 control;

 spin_lock_irqsave(&priv->lock, flags);
 if (set & TIOCM_RTS)
  priv->mcr |= CH341_BIT_RTS;
 if (set & TIOCM_DTR)
  priv->mcr |= CH341_BIT_DTR;
 if (clear & TIOCM_RTS)
  priv->mcr &= ~CH341_BIT_RTS;
 if (clear & TIOCM_DTR)
  priv->mcr &= ~CH341_BIT_DTR;
 control = priv->mcr;
 spin_unlock_irqrestore(&priv->lock, flags);

 return ch341_set_handshake(port->serial->dev, control);
}
