
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int DPRPU ;
 int SYSCFG ;
 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;

void usbhs_sys_function_pullup(struct usbhs_priv *priv, int enable)
{
 usbhs_bset(priv, SYSCFG, DPRPU, enable ? DPRPU : 0);
}
