
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct ssu100_port_private {int status_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ssu100_port_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct ssu100_port_private*) ;

__attribute__((used)) static int ssu100_port_probe(struct usb_serial_port *port)
{
 struct ssu100_port_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->status_lock);

 usb_set_serial_port_data(port, priv);

 return 0;
}
