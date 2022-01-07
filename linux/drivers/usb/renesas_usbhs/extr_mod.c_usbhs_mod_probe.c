
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int irqflags; int irq; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int devm_request_irq (struct device*,int ,int ,int ,int ,struct usbhs_priv*) ;
 int usbhs_interrupt ;
 int usbhs_mod_gadget_probe (struct usbhs_priv*) ;
 int usbhs_mod_gadget_remove (struct usbhs_priv*) ;
 int usbhs_mod_host_probe (struct usbhs_priv*) ;
 int usbhs_mod_host_remove (struct usbhs_priv*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;

int usbhs_mod_probe(struct usbhs_priv *priv)
{
 struct device *dev = usbhs_priv_to_dev(priv);
 int ret;




 ret = usbhs_mod_host_probe(priv);
 if (ret < 0)
  return ret;

 ret = usbhs_mod_gadget_probe(priv);
 if (ret < 0)
  goto mod_init_host_err;


 ret = devm_request_irq(dev, priv->irq, usbhs_interrupt,
     priv->irqflags, dev_name(dev), priv);
 if (ret) {
  dev_err(dev, "irq request err\n");
  goto mod_init_gadget_err;
 }

 return ret;

mod_init_gadget_err:
 usbhs_mod_gadget_remove(priv);
mod_init_host_err:
 usbhs_mod_host_remove(priv);

 return ret;
}
