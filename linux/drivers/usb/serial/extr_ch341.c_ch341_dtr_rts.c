
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct ch341_private {int mcr; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int CH341_BIT_DTR ;
 int CH341_BIT_RTS ;
 int ch341_set_handshake (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct ch341_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ch341_dtr_rts(struct usb_serial_port *port, int on)
{
 struct ch341_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;


 spin_lock_irqsave(&priv->lock, flags);
 if (on)
  priv->mcr |= CH341_BIT_RTS | CH341_BIT_DTR;
 else
  priv->mcr &= ~(CH341_BIT_RTS | CH341_BIT_DTR);
 spin_unlock_irqrestore(&priv->lock, flags);
 ch341_set_handshake(port->serial->dev, priv->mcr);
}
