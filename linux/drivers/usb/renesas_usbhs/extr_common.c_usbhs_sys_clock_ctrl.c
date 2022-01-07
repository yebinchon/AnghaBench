
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;


 int SCKE ;
 int SYSCFG ;
 int usbhs_bset (struct usbhs_priv*,int ,int ,int ) ;

__attribute__((used)) static void usbhs_sys_clock_ctrl(struct usbhs_priv *priv, int enable)
{
 usbhs_bset(priv, SYSCFG, SCKE, enable ? SCKE : 0);
}
