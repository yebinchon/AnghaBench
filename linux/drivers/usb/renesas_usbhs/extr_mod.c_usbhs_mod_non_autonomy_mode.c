
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbhs_priv {TYPE_1__* pfunc; } ;
struct usbhs_mod_info {int get_vbus; } ;
struct TYPE_2__ {int get_vbus; } ;


 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;

void usbhs_mod_non_autonomy_mode(struct usbhs_priv *priv)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);

 info->get_vbus = priv->pfunc->get_vbus;
}
