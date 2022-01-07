
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct iuu_private {struct iuu_private* buf; struct iuu_private* writebuf; int lock; int vcc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int iuu_create_sysfs_attrs (struct usb_serial_port*) ;
 int kfree (struct iuu_private*) ;
 void* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int usb_set_serial_port_data (struct usb_serial_port*,struct iuu_private*) ;
 int vcc_default ;

__attribute__((used)) static int iuu_port_probe(struct usb_serial_port *port)
{
 struct iuu_private *priv;
 int ret;

 priv = kzalloc(sizeof(struct iuu_private), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->buf = kzalloc(256, GFP_KERNEL);
 if (!priv->buf) {
  kfree(priv);
  return -ENOMEM;
 }

 priv->writebuf = kzalloc(256, GFP_KERNEL);
 if (!priv->writebuf) {
  kfree(priv->buf);
  kfree(priv);
  return -ENOMEM;
 }

 priv->vcc = vcc_default;
 spin_lock_init(&priv->lock);

 usb_set_serial_port_data(port, priv);

 ret = iuu_create_sysfs_attrs(port);
 if (ret) {
  kfree(priv->writebuf);
  kfree(priv->buf);
  kfree(priv);
  return ret;
 }

 return 0;
}
