
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_mod_info {int get_vbus; int * irq_vbus; } ;
struct usbhs_priv {struct usbhs_mod_info mod_info; } ;


 int usbhs_irq_callback_update (struct usbhs_priv*,int *) ;
 int usbhsm_phy_get_vbus ;

__attribute__((used)) static void usbhs_mod_phy_mode(struct usbhs_priv *priv)
{
 struct usbhs_mod_info *info = &priv->mod_info;

 info->irq_vbus = ((void*)0);
 info->get_vbus = usbhsm_phy_get_vbus;

 usbhs_irq_callback_update(priv, ((void*)0));
}
