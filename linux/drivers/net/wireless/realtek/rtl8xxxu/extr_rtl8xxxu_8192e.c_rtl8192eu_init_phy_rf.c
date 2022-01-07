
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8xxxu_priv {int dummy; } ;


 int RF_A ;
 int RF_B ;
 int rtl8192eu_radioa_init_table ;
 int rtl8192eu_radiob_init_table ;
 int rtl8xxxu_init_phy_rf (struct rtl8xxxu_priv*,int ,int ) ;

__attribute__((used)) static int rtl8192eu_init_phy_rf(struct rtl8xxxu_priv *priv)
{
 int ret;

 ret = rtl8xxxu_init_phy_rf(priv, rtl8192eu_radioa_init_table, RF_A);
 if (ret)
  goto exit;

 ret = rtl8xxxu_init_phy_rf(priv, rtl8192eu_radiob_init_table, RF_B);

exit:
 return ret;
}
