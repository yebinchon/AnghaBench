
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtl_phy {int **** tx_power_by_rate_offset; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 size_t BAND_ON_2_4G ;
 int CCK ;
 int COMP_POWER ;
 int DBG_TRACE ;
 int HT_MCS0_MCS7 ;
 int HT_MCS8_MCS15 ;
 int OFDM ;
 size_t RF90_PATH_A ;
 size_t RF_1TX ;
 size_t RF_2TX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _phy_convert_txpower_dbm_to_relative_value (int *,int,int,size_t) ;
 size_t _rtl8723be_phy_get_txpower_by_rate_base (struct ieee80211_hw*,size_t,size_t,size_t,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8723be_phy_convert_txpower_dbm_to_relative_value(
       struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 base = 0, rfpath = RF90_PATH_A;

 base = _rtl8723be_phy_get_txpower_by_rate_base(hw,
   BAND_ON_2_4G, rfpath, RF_1TX, CCK);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][2],
     1, 1, base);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][3],
     1, 3, base);

 base = _rtl8723be_phy_get_txpower_by_rate_base(hw, BAND_ON_2_4G, rfpath,
             RF_1TX, OFDM);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][0],
     0, 3, base);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][1],
     0, 3, base);

 base = _rtl8723be_phy_get_txpower_by_rate_base(hw, BAND_ON_2_4G,
      rfpath, RF_1TX, HT_MCS0_MCS7);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][4],
     0, 3, base);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_1TX][5],
     0, 3, base);

 base = _rtl8723be_phy_get_txpower_by_rate_base(hw, BAND_ON_2_4G,
             rfpath, RF_2TX,
             HT_MCS8_MCS15);
 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_2TX][6],
     0, 3, base);

 _phy_convert_txpower_dbm_to_relative_value(
     &rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][rfpath][RF_2TX][7],
     0, 3, base);

 RT_TRACE(rtlpriv, COMP_POWER, DBG_TRACE,
     "<===_rtl8723be_phy_convert_txpower_dbm_to_relative_value()\n");
}
