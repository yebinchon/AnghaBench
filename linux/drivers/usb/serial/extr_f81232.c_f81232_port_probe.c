
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_delay; } ;
struct usb_serial_port {TYPE_1__ port; } ;
struct f81232_private {struct usb_serial_port* port; int lsr_work; int interrupt_work; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int f81232_interrupt_work ;
 int f81232_lsr_worker ;
 struct f81232_private* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct f81232_private*) ;

__attribute__((used)) static int f81232_port_probe(struct usb_serial_port *port)
{
 struct f81232_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->lock);
 INIT_WORK(&priv->interrupt_work, f81232_interrupt_work);
 INIT_WORK(&priv->lsr_work, f81232_lsr_worker);

 usb_set_serial_port_data(port, priv);

 port->port.drain_delay = 256;
 priv->port = port;

 return 0;
}
