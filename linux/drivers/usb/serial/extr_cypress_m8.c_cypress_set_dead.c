
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port_number; int dev; } ;
struct cypress_private {int lock; scalar_t__ comm_is_ok; } ;


 int dev_err (int *,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cypress_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void cypress_set_dead(struct usb_serial_port *port)
{
 struct cypress_private *priv = usb_get_serial_port_data(port);
 unsigned long flags;

 spin_lock_irqsave(&priv->lock, flags);
 if (!priv->comm_is_ok) {
  spin_unlock_irqrestore(&priv->lock, flags);
  return;
 }
 priv->comm_is_ok = 0;
 spin_unlock_irqrestore(&priv->lock, flags);

 dev_err(&port->dev, "cypress_m8 suspending failing port %d - "
  "interval might be too short\n", port->port_number);
}
