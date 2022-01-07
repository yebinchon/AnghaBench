
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {TYPE_2__* dev; } ;
struct kobil_private {int device_type; scalar_t__ cur_pos; scalar_t__ filled; } ;
struct TYPE_3__ {int idProduct; } ;
struct TYPE_4__ {int dev; TYPE_1__ descriptor; } ;


 int ENOMEM ;
 int GFP_KERNEL ;




 int dev_dbg (int *,char*) ;
 struct kobil_private* kmalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct kobil_private*) ;

__attribute__((used)) static int kobil_port_probe(struct usb_serial_port *port)
{
 struct usb_serial *serial = port->serial;
 struct kobil_private *priv;

 priv = kmalloc(sizeof(struct kobil_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->filled = 0;
 priv->cur_pos = 0;
 priv->device_type = le16_to_cpu(serial->dev->descriptor.idProduct);

 switch (priv->device_type) {
 case 131:
  dev_dbg(&serial->dev->dev, "KOBIL B1 PRO / KAAN PRO detected\n");
  break;
 case 130:
  dev_dbg(&serial->dev->dev, "KOBIL KAAN Standard Plus / SecOVID Reader Plus detected\n");
  break;
 case 128:
  dev_dbg(&serial->dev->dev, "KOBIL USBTWIN detected\n");
  break;
 case 129:
  dev_dbg(&serial->dev->dev, "KOBIL KAAN SIM detected\n");
  break;
 }
 usb_set_serial_port_data(port, priv);

 return 0;
}
