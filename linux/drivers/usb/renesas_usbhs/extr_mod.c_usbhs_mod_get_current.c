
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct usbhs_mod_info {struct usbhs_mod* curt; } ;
struct usbhs_mod {int dummy; } ;


 struct usbhs_mod_info* usbhs_priv_to_modinfo (struct usbhs_priv*) ;

struct usbhs_mod *usbhs_mod_get_current(struct usbhs_priv *priv)
{
 struct usbhs_mod_info *info = usbhs_priv_to_modinfo(priv);

 return info->curt;
}
