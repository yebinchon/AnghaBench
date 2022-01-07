
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
 int PHY_REG_ARRAY_PGLENGTH ;
 int * RTL8192CEPHY_REG_ARRAY_PG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92c_store_pwrindex_diffrate_offset (struct ieee80211_hw*,int ,int ,int ) ;
 int rtl_addr_delay (int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool _rtl92ce_phy_config_bb_with_pgheaderfile(struct ieee80211_hw *hw,
           u8 configtype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;
 u32 *phy_regarray_table_pg;
 u16 phy_regarray_pg_len;

 phy_regarray_pg_len = PHY_REG_ARRAY_PGLENGTH;
 phy_regarray_table_pg = RTL8192CEPHY_REG_ARRAY_PG;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  for (i = 0; i < phy_regarray_pg_len; i = i + 3) {
   rtl_addr_delay(phy_regarray_table_pg[i]);

   _rtl92c_store_pwrindex_diffrate_offset(hw,
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
