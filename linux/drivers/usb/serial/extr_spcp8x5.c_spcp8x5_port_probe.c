
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_delay; } ;
struct usb_serial_port {TYPE_1__ port; int serial; } ;
struct usb_device_id {int driver_info; } ;
struct spcp8x5_private {int quirks; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct spcp8x5_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 struct usb_device_id* usb_get_serial_data (int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct spcp8x5_private*) ;

__attribute__((used)) static int spcp8x5_port_probe(struct usb_serial_port *port)
{
 const struct usb_device_id *id = usb_get_serial_data(port->serial);
 struct spcp8x5_private *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 priv->quirks = id->driver_info;

 usb_set_serial_port_data(port, priv);

 port->port.drain_delay = 256;

 return 0;
}
