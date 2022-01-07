
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {int dev; struct usb_serial* serial; } ;
struct usb_serial {TYPE_1__** port; } ;
struct mct_u232_private {int lock; TYPE_2__* read_urb; } ;
struct TYPE_4__ {struct usb_serial_port* context; } ;
struct TYPE_3__ {TYPE_2__* interrupt_in_urb; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct mct_u232_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct mct_u232_private*) ;

__attribute__((used)) static int mct_u232_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct mct_u232_private *priv;


 if (!serial->port[1] || !serial->port[1]->interrupt_in_urb) {
  dev_err(&port->dev, "expected endpoint missing\n");
  return -ENODEV;
 }

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;


 priv->read_urb = serial->port[1]->interrupt_in_urb;
 priv->read_urb->context = port;

 spin_lock_init(&priv->lock);

 usb_set_serial_port_data(port, priv);

 return 0;
}
