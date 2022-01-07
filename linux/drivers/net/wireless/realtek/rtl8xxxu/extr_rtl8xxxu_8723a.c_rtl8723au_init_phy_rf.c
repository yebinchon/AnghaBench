
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {int dummy; } ;


 int REG_AFE_PLL_CTRL ;
 int REG_AFE_XTAL_CTRL ;
 int RF_A ;
 int rtl8723au_radioa_1t_init_table ;
 int rtl8xxxu_init_phy_rf (struct rtl8xxxu_priv*,int ,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static int rtl8723au_init_phy_rf(struct rtl8xxxu_priv *priv)
{
 int ret;

 ret = rtl8xxxu_init_phy_rf(priv, rtl8723au_radioa_1t_init_table, RF_A);


 rtl8xxxu_write32(priv, REG_AFE_XTAL_CTRL, 0x0381808d);
 rtl8xxxu_write32(priv, REG_AFE_PLL_CTRL, 0xf0ffff83);
 rtl8xxxu_write32(priv, REG_AFE_PLL_CTRL, 0xf0ffff82);
 rtl8xxxu_write32(priv, REG_AFE_PLL_CTRL, 0xf0ffff83);

 return ret;
}
