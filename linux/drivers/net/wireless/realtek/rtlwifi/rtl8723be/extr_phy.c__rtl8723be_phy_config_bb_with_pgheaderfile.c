
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
 int* RTL8723BEPHY_REG_ARRAY_PG ;
 int RTL8723BEPHY_REG_ARRAY_PGLEN ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl8723be_store_tx_power_by_rate (struct ieee80211_hw*,int,int,int,int,int,int) ;
 int mdelay (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool _rtl8723be_phy_config_bb_with_pgheaderfile(struct ieee80211_hw *hw,
             u8 configtype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 int i;
 u32 *phy_regarray_table_pg;
 u16 phy_regarray_pg_len;
 u32 v1 = 0, v2 = 0, v3 = 0, v4 = 0, v5 = 0, v6 = 0;

 phy_regarray_pg_len = RTL8723BEPHY_REG_ARRAY_PGLEN;
 phy_regarray_table_pg = RTL8723BEPHY_REG_ARRAY_PG;

 if (configtype == BASEBAND_CONFIG_PHY_REG) {
  for (i = 0; i < phy_regarray_pg_len; i = i + 6) {
   v1 = phy_regarray_table_pg[i];
   v2 = phy_regarray_table_pg[i+1];
   v3 = phy_regarray_table_pg[i+2];
   v4 = phy_regarray_table_pg[i+3];
   v5 = phy_regarray_table_pg[i+4];
   v6 = phy_regarray_table_pg[i+5];

   if (v1 < 0xcdcdcdcd) {
    if (phy_regarray_table_pg[i] == 0xfe ||
        phy_regarray_table_pg[i] == 0xffe)
     mdelay(50);
    else
     _rtl8723be_store_tx_power_by_rate(hw,
       v1, v2, v3, v4, v5, v6);
    continue;
   }
  }
 } else {
  RT_TRACE(rtlpriv, COMP_SEND, DBG_TRACE,
    "configtype != BaseBand_Config_PHY_REG\n");
 }
 return 1;
}
