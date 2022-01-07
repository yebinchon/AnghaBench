
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dev; int interrupt_in_urb; } ;
struct cyberjack_private {scalar_t__ wrsent; scalar_t__ wrfilled; scalar_t__ rdtodo; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct cyberjack_private* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct cyberjack_private*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int cyberjack_port_probe(struct usb_serial_port *port)
{
 struct cyberjack_private *priv;
 int result;

 priv = kmalloc(sizeof(struct cyberjack_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 priv->rdtodo = 0;
 priv->wrfilled = 0;
 priv->wrsent = 0;

 usb_set_serial_port_data(port, priv);

 result = usb_submit_urb(port->interrupt_in_urb, GFP_KERNEL);
 if (result)
  dev_err(&port->dev, "usb_submit_urb(read int) failed\n");

 return 0;
}
