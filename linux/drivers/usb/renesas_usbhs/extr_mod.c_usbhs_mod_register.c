
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {struct usbhs_mod** mod; } ;
struct usbhs_mod {struct usbhs_priv* priv; } ;


 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;

void usbhs_mod_register(struct usbhs_priv *priv, struct usbhs_mod *mod, int id)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);

 info->mod[id] = mod;
 mod->priv = priv;
}
