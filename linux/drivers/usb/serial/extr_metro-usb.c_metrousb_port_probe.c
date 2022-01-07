
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct metrousb_private {int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct metrousb_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct metrousb_private*) ;

__attribute__((used)) static int metrousb_port_probe(struct usb_serial_port *port)
{
 struct metrousb_private *metro_priv;

 metro_priv = kzalloc(sizeof(*metro_priv), GFP_KERNEL);
 if (!metro_priv)
  return -ENOMEM;

 spin_lock_init(&metro_priv->lock);

 usb_set_serial_port_data(port, metro_priv);

 return 0;
}
