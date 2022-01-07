
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhsh_hpriv {int dummy; } ;
struct usbhs_priv {int dummy; } ;
struct usbhs_mod {int * irq_sign; int * irq_sack; int * irq_dtch; int * irq_attch; } ;
struct usb_hcd {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;
 int usb_remove_hcd (struct usb_hcd*) ;
 int usbhs_irq_callback_update (struct usbhs_priv*,struct usbhs_mod*) ;
 struct usbhs_mod* usbhs_mod_get_current (struct usbhs_priv*) ;
 struct device* usbhs_priv_to_dev (struct usbhs_priv*) ;
 int usbhs_sys_host_ctrl (struct usbhs_priv*,int ) ;
 struct usb_hcd* usbhsh_hpriv_to_hcd (struct usbhsh_hpriv*) ;
 struct usbhsh_hpriv* usbhsh_priv_to_hpriv (struct usbhs_priv*) ;

__attribute__((used)) static int usbhsh_stop(struct usbhs_priv *priv)
{
 struct usbhsh_hpriv *hpriv = usbhsh_priv_to_hpriv(priv);
 struct usb_hcd *hcd = usbhsh_hpriv_to_hcd(hpriv);
 struct usbhs_mod *mod = usbhs_mod_get_current(priv);
 struct device *dev = usbhs_priv_to_dev(priv);




 mod->irq_attch = ((void*)0);
 mod->irq_dtch = ((void*)0);
 mod->irq_sack = ((void*)0);
 mod->irq_sign = ((void*)0);
 usbhs_irq_callback_update(priv, mod);

 usb_remove_hcd(hcd);


 usbhs_sys_host_ctrl(priv, 0);

 dev_dbg(dev, "quit host\n");

 return 0;
}
