
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {int get_vbus; int irq_vbus; } ;


 int usbhs_irq_callback_update (struct usbhs_priv*,int *) ;
 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;
 int usbhsm_autonomy_get_vbus ;
 int usbhsm_autonomy_irq_vbus ;

void usbhs_mod_autonomy_mode(struct usbhs_priv *priv)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);

 info->irq_vbus = usbhsm_autonomy_irq_vbus;
 info->get_vbus = usbhsm_autonomy_get_vbus;

 usbhs_irq_callback_update(priv, ((void*)0));
}
