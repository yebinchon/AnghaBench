
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_delay; } ;
struct usb_serial_port {TYPE_1__ port; } ;
struct oti6858_private {int delayed_write_work; int delayed_setup_work; struct usb_serial_port* port; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct oti6858_private* kzalloc (int,int ) ;
 int send_data ;
 int setup_line ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct oti6858_private*) ;

__attribute__((used)) static int oti6858_port_probe(struct usb_serial_port *port)
{
 struct oti6858_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 priv->port = port;
 INIT_DELAYED_WORK(&priv->delayed_setup_work, setup_line);
 INIT_DELAYED_WORK(&priv->delayed_write_work, send_data);

 usb_set_serial_port_data(port, priv);

 port->port.drain_delay = 256;

 return 0;
}
