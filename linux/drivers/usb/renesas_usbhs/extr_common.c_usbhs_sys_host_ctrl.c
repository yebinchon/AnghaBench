
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbhs_priv {int dummy; } ;


 int DCFM ;
 int DPRPU ;
 int DRPD ;
 int HSE ;
 int SYSCFG ;
 int USBE ;
 int usbhs_bset (struct usbhs_priv*,int ,int,int) ;

void usbhs_sys_host_ctrl(struct usbhs_priv *priv, int enable)
{
 u16 mask = DCFM | DRPD | DPRPU | HSE | USBE;
 u16 val = DCFM | DRPD | HSE | USBE;







 usbhs_bset(priv, SYSCFG, mask, enable ? val : 0);
}
