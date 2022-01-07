
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct ch341_private {int lcr; int baud_rate; int lock; } ;
struct TYPE_2__ {int dev; } ;


 int CH341_LCR_CS8 ;
 int CH341_LCR_ENABLE_RX ;
 int CH341_LCR_ENABLE_TX ;
 int DEFAULT_BAUD_RATE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ch341_configure (int ,struct ch341_private*) ;
 int kfree (struct ch341_private*) ;
 struct ch341_private* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct ch341_private*) ;

__attribute__((used)) static int ch341_port_probe(struct usb_serial_port *port)
{
 struct ch341_private *priv;
 int r;

 priv = kzalloc(sizeof(struct ch341_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 spin_lock_init(&priv->lock);
 priv->baud_rate = DEFAULT_BAUD_RATE;




 priv->lcr = CH341_LCR_ENABLE_RX | CH341_LCR_ENABLE_TX | CH341_LCR_CS8;

 r = ch341_configure(port->serial->dev, priv);
 if (r < 0)
  goto error;

 usb_set_serial_port_data(port, priv);
 return 0;

error: kfree(priv);
 return r;
}
