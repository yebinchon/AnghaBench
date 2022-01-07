
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl8xxxu_priv {int dummy; } ;


 int BIT (int) ;
 scalar_t__ REG_APS_FSMCO ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,scalar_t__) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,scalar_t__,int) ;

__attribute__((used)) static int rtl8192eu_emu_to_disabled(struct rtl8xxxu_priv *priv)
{
 u8 val8;


 val8 = rtl8xxxu_read8(priv, REG_APS_FSMCO + 1);
 val8 &= ~(BIT(3) | BIT(4));
 val8 |= BIT(3);
 rtl8xxxu_write8(priv, REG_APS_FSMCO + 1, val8);

 return 0;
}
