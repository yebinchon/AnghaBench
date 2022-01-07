
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {int dummy; } ;


 int RF6052_REG_MODE_AG ;
 int RF_A ;
 int msleep (int) ;
 int rtl8723bu_radioa_1t_init_table ;
 int rtl8xxxu_init_phy_rf (struct rtl8xxxu_priv*,int ,int ) ;
 int rtl8xxxu_write_rfreg (struct rtl8xxxu_priv*,int ,int,int) ;

__attribute__((used)) static int rtl8723bu_init_phy_rf(struct rtl8xxxu_priv *priv)
{
 int ret;

 ret = rtl8xxxu_init_phy_rf(priv, rtl8723bu_radioa_1t_init_table, RF_A);



 rtl8xxxu_write_rfreg(priv, RF_A, 0xb0, 0xdfbe0);
 rtl8xxxu_write_rfreg(priv, RF_A, RF6052_REG_MODE_AG, 0x8c01);
 msleep(200);
 rtl8xxxu_write_rfreg(priv, RF_A, 0xb0, 0xdffe0);

 return ret;
}
