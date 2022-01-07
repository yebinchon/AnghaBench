
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int usbhs_sys_function_pullup (struct usbhs_priv*,int) ;
 scalar_t__ usbhsg_can_pullup (struct usbhs_priv*) ;

__attribute__((used)) static void usbhsg_update_pullup(struct usbhs_priv *priv)
{
 if (usbhsg_can_pullup(priv))
  usbhs_sys_function_pullup(priv, 1);
 else
  usbhs_sys_function_pullup(priv, 0);
}
