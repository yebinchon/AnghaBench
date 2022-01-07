
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct opticon_private {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct opticon_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct opticon_private*) ;

__attribute__((used)) static int opticon_port_probe(struct usb_serial_port *port)
{
 struct opticon_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);

 usb_set_serial_port_data(port, priv);

 return 0;
}
