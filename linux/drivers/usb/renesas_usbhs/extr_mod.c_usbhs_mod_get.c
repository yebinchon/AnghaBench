
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {struct usbhs_mod** mod; } ;
struct usbhs_mod {int dummy; } ;




 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;

struct usbhs_mod *usbhs_mod_get(struct usbhs_priv *priv, int id)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);
 struct usbhs_mod *ret = ((void*)0);

 switch (id) {
 case 128:
 case 129:
  ret = info->mod[id];
  break;
 }

 return ret;
}
