
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int BIT (int) ;
 int REG_RX_WAIT_CCA ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;

void rtl8xxxu_gen2_disable_rf(struct rtl8xxxu_priv *priv)
{
 u32 val32;

 val32 = rtl8xxxu_read32(priv, REG_RX_WAIT_CCA);
 val32 &= ~(BIT(22) | BIT(23));
 rtl8xxxu_write32(priv, REG_RX_WAIT_CCA, val32);
}
