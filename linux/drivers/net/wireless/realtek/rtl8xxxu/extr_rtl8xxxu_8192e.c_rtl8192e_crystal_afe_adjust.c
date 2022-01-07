
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rtl8xxxu_priv {int dummy; } ;


 int REG_AFE_CTRL4 ;
 int REG_AFE_PLL_CTRL ;
 int rtl8xxxu_read32 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_read8 (struct rtl8xxxu_priv*,int ) ;
 int rtl8xxxu_write32 (struct rtl8xxxu_priv*,int ,int) ;
 int rtl8xxxu_write8 (struct rtl8xxxu_priv*,int ,int) ;

__attribute__((used)) static void rtl8192e_crystal_afe_adjust(struct rtl8xxxu_priv *priv)
{
 u8 val8;
 u32 val32;




 val8 = rtl8xxxu_read8(priv, REG_AFE_PLL_CTRL);
 val8 &= 0xfb;
 rtl8xxxu_write8(priv, REG_AFE_PLL_CTRL, val8);

 val32 = rtl8xxxu_read32(priv, REG_AFE_CTRL4);
 val32 &= 0xfffffc7f;
 rtl8xxxu_write32(priv, REG_AFE_CTRL4, val32);





 val8 = rtl8xxxu_read8(priv, REG_AFE_PLL_CTRL);
 val8 &= 0xbf;
 rtl8xxxu_write8(priv, REG_AFE_PLL_CTRL, val8);




 val32 = rtl8xxxu_read32(priv, REG_AFE_CTRL4);
 val32 &= 0xffdfffff;
 rtl8xxxu_write32(priv, REG_AFE_CTRL4, val32);
}
