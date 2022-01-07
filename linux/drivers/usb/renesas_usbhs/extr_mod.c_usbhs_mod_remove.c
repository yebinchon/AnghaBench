
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int usbhs_mod_gadget_remove (struct usbhs_priv*) ;
 int usbhs_mod_host_remove (struct usbhs_priv*) ;

void usbhs_mod_remove(struct usbhs_priv *priv)
{
 usbhs_mod_host_remove(priv);
 usbhs_mod_gadget_remove(priv);
}
