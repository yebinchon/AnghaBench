
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intf_priv {int dummy; } ;


 int kfree (struct intf_priv*) ;
 void r8712_usb_unload_intf_priv (struct intf_priv*) ;

__attribute__((used)) static void _unload_intf_hdl(struct intf_priv *pintfpriv)
{
 void (*unload_intf_priv)(struct intf_priv *pintfpriv);

 unload_intf_priv = &r8712_usb_unload_intf_priv;
 unload_intf_priv(pintfpriv);
 kfree(pintfpriv);
}
