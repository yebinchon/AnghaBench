
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_delay; } ;
struct usb_serial_port {TYPE_1__ port; } ;
struct pl2303_private {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct pl2303_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct pl2303_private*) ;

__attribute__((used)) static int pl2303_port_probe(struct usb_serial_port *port)
{
 struct pl2303_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);

 usb_set_serial_port_data(port, priv);

 port->port.drain_delay = 256;

 return 0;
}
