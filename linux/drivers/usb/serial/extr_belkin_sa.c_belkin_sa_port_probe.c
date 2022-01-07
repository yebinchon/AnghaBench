
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {TYPE_2__* serial; } ;
struct TYPE_3__ {int bcdDevice; } ;
struct usb_device {TYPE_1__ descriptor; int dev; } ;
struct belkin_sa_private {int bad_flow_control; scalar_t__ last_msr; scalar_t__ last_lsr; scalar_t__ control_state; int lock; } ;
struct TYPE_4__ {struct usb_device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*,int,int) ;
 struct belkin_sa_private* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct belkin_sa_private*) ;

__attribute__((used)) static int belkin_sa_port_probe(struct usb_serial_port *port)
{
 struct usb_device *dev = port->serial->dev;
 struct belkin_sa_private *priv;

 priv = kmalloc(sizeof(struct belkin_sa_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 priv->control_state = 0;
 priv->last_lsr = 0;
 priv->last_msr = 0;

 priv->bad_flow_control =
  (le16_to_cpu(dev->descriptor.bcdDevice) <= 0x0206) ? 1 : 0;
 dev_info(&dev->dev, "bcdDevice: %04x, bfc: %d\n",
     le16_to_cpu(dev->descriptor.bcdDevice),
     priv->bad_flow_control);

 usb_set_serial_port_data(port, priv);

 return 0;
}
