
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {struct usbhs_mod* curt; struct usbhs_mod** mod; } ;
struct usbhs_mod {int dummy; } ;


 int EINVAL ;


 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;

int usbhs_mod_change(struct usbhs_priv *priv, int id)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);
 struct usbhs_mod *mod = ((void*)0);
 int ret = 0;


 switch (id) {
 case 128:
 case 129:
  mod = info->mod[id];
  break;
 default:
  ret = -EINVAL;
 }
 info->curt = mod;

 return ret;
}
