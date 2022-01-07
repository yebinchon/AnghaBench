
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BASEBAND_CONFIG_PHY_REG ;
 int COMP_SEND ;
 int DBG_TRACE ;
 int* RTL8723EPHY_REG_ARRAY_PG ;
 int RTL8723E_PHY_REG_ARRAY_PGLENGTH ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int mdelay (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int store_pwrindex_diffrate_offset (struct ieee80211_hw*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl8723e_phy_config_bb_with_pgheaderfile(struct ieee80211_hw *hw,
            u8 configtype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;
 u32 *phy_regarray_table_pg;
 u16 phy_regarray_pg_len;

 phy_regarray_pg_len = RTL8723E_PHY_REG_ARRAY_PGLENGTH;
 phy_regarray_table_pg = RTL8723EPHY_REG_ARRAY_PG;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  for (i = 0; i < phy_regarray_pg_len; i = i + 3) {
   if (phy_regarray_table_pg[i] == 0xfe)
    mdelay(50);
   else if (phy_regarray_table_pg[i] == 0xfd)
    mdelay(5);
   else if (phy_regarray_table_pg[i] == 0xfc)
    mdelay(1);
   else if (phy_regarray_table_pg[i] == 0xfb)
    udelay(50);
   else if (phy_regarray_table_pg[i] == 0xfa)
    udelay(5);
   else if (phy_regarray_table_pg[i] == 0xf9)
    udelay(1);

   store_pwrindex_diffrate_offset(hw,
      phy_regarray_table_pg[i],
      phy_regarray_table_pg[i + 1],
      phy_regarray_table_pg[i + 2]);
  }
 } else {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "configtype != BaseBand_Config_PHY_REG\n");
 }
 return 1;
}
