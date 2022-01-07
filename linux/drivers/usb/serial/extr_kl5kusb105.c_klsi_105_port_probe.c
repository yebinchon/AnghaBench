
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {int dummy; } ;
struct TYPE_2__ {int pktlen; int unknown2; scalar_t__ unknown1; int databits; int baudrate; } ;
struct klsi_105_private {int lock; scalar_t__ line_state; TYPE_1__ cfg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kl5kusb105a_dtb_8 ;
 int kl5kusb105a_sio_b9600 ;
 struct klsi_105_private* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct klsi_105_private*) ;

__attribute__((used)) static int klsi_105_port_probe(struct usb_serial_port *port)
{
 struct klsi_105_private *priv;

 priv = kmalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;


 priv->cfg.pktlen = 5;
 priv->cfg.baudrate = kl5kusb105a_sio_b9600;
 priv->cfg.databits = kl5kusb105a_dtb_8;
 priv->cfg.unknown1 = 0;
 priv->cfg.unknown2 = 1;

 priv->line_state = 0;

 spin_lock_init(&priv->lock);

 usb_set_serial_port_data(port, priv);

 return 0;
}
