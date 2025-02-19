
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int***** txpwr_limit_2_4g; int*** txpwr_by_rate_base_24g; int***** txpwr_limit_5g; int*** txpwr_by_rate_base_5g; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;


 int BAND_ON_2_4G ;
 int BAND_ON_5G ;
 int CHANNEL_MAX_NUMBER_2G ;
 int CHANNEL_MAX_NUMBER_5G ;
 int COMP_INIT ;
 int DBG_TRACE ;
 int MAX_2_4G_BANDWIDTH_NUM ;
 int MAX_5G_BANDWIDTH_NUM ;
 int MAX_POWER_INDEX ;
 int MAX_RATE_SECTION_NUM ;
 int MAX_REGULATION_NUM ;
 int MAX_RF_PATH_NUM ;
 int MGN_11M ;
 int MGN_54M ;
 int MGN_MCS15 ;
 int MGN_MCS7 ;
 int MGN_VHT1SS_MCS7 ;
 int MGN_VHT2SS_MCS7 ;
 size_t RF90_PATH_A ;
 size_t RF_1TX ;
 size_t RF_2TX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int _rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit (struct ieee80211_hw*) ;
 int _rtl8812ae_phy_get_txpower_by_rate_base_index (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8812ae_phy_convert_txpower_limit_to_power_index(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 bw40_pwr_base_dbm2_4G, bw40_pwr_base_dbm5G;
 u8 regulation, bw, channel, rate_section;
 u8 base_index2_4G = 0;
 u8 base_index5G = 0;
 s8 temp_value = 0, temp_pwrlmt = 0;
 u8 rf_path = 0;

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
  "=====> _rtl8812ae_phy_convert_txpower_limit_to_power_index()\n");

 _rtl8812ae_phy_cross_reference_ht_and_vht_txpower_limit(hw);

 for (regulation = 0; regulation < MAX_REGULATION_NUM; ++regulation) {
  for (bw = 0; bw < MAX_2_4G_BANDWIDTH_NUM; ++bw) {
   for (channel = 0; channel < CHANNEL_MAX_NUMBER_2G; ++channel) {
    for (rate_section = 0; rate_section < MAX_RATE_SECTION_NUM; ++rate_section) {


     if (rate_section == 0) {
      base_index2_4G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_2_4G, MGN_11M);
     } else if (rate_section == 1) {
      base_index2_4G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_2_4G, MGN_54M);
     } else if (rate_section == 2) {
      base_index2_4G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_2_4G, MGN_MCS7);
     } else if (rate_section == 3) {
      base_index2_4G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_2_4G, MGN_MCS15);
     }

     temp_pwrlmt = rtlphy->txpwr_limit_2_4g[regulation]
      [bw][rate_section][channel][RF90_PATH_A];

     for (rf_path = RF90_PATH_A;
      rf_path < MAX_RF_PATH_NUM;
      ++rf_path) {
      if (rate_section == 3)
       bw40_pwr_base_dbm2_4G =
       rtlphy->txpwr_by_rate_base_24g[rf_path][RF_2TX][base_index2_4G];
      else
       bw40_pwr_base_dbm2_4G =
       rtlphy->txpwr_by_rate_base_24g[rf_path][RF_1TX][base_index2_4G];

      if (temp_pwrlmt != MAX_POWER_INDEX) {
       temp_value = temp_pwrlmt - bw40_pwr_base_dbm2_4G;
       rtlphy->txpwr_limit_2_4g[regulation]
        [bw][rate_section][channel][rf_path] =
        temp_value;
      }

      RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
       "TxPwrLimit_2_4G[regulation %d][bw %d][rateSection %d][channel %d] = %d\n(TxPwrLimit in dBm %d - BW40PwrLmt2_4G[channel %d][rfpath %d] %d)\n",
       regulation, bw, rate_section, channel,
       rtlphy->txpwr_limit_2_4g[regulation][bw]
       [rate_section][channel][rf_path], (temp_pwrlmt == 63)
       ? 0 : temp_pwrlmt/2, channel, rf_path,
       bw40_pwr_base_dbm2_4G);
     }
    }
   }
  }
 }
 for (regulation = 0; regulation < MAX_REGULATION_NUM; ++regulation) {
  for (bw = 0; bw < MAX_5G_BANDWIDTH_NUM; ++bw) {
   for (channel = 0; channel < CHANNEL_MAX_NUMBER_5G; ++channel) {
    for (rate_section = 0; rate_section < MAX_RATE_SECTION_NUM; ++rate_section) {



     if (rate_section == 1) {
      base_index5G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_5G, MGN_54M);
     } else if (rate_section == 2) {
      base_index5G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_5G, MGN_MCS7);
     } else if (rate_section == 3) {
      base_index5G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_5G, MGN_MCS15);
     } else if (rate_section == 4) {
      base_index5G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_5G, MGN_VHT1SS_MCS7);
     } else if (rate_section == 5) {
      base_index5G =
       _rtl8812ae_phy_get_txpower_by_rate_base_index(hw,
       BAND_ON_5G, MGN_VHT2SS_MCS7);
     }

     temp_pwrlmt = rtlphy->txpwr_limit_5g[regulation]
      [bw][rate_section][channel]
      [RF90_PATH_A];

     for (rf_path = RF90_PATH_A;
          rf_path < MAX_RF_PATH_NUM;
          ++rf_path) {
      if (rate_section == 3 || rate_section == 5)
       bw40_pwr_base_dbm5G =
       rtlphy->txpwr_by_rate_base_5g[rf_path]
       [RF_2TX][base_index5G];
      else
       bw40_pwr_base_dbm5G =
       rtlphy->txpwr_by_rate_base_5g[rf_path]
       [RF_1TX][base_index5G];

      if (temp_pwrlmt != MAX_POWER_INDEX) {
       temp_value =
        temp_pwrlmt - bw40_pwr_base_dbm5G;
       rtlphy->txpwr_limit_5g[regulation]
        [bw][rate_section][channel]
        [rf_path] = temp_value;
      }

      RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
       "TxPwrLimit_5G[regulation %d][bw %d][rateSection %d][channel %d] =%d\n(TxPwrLimit in dBm %d - BW40PwrLmt5G[chnl group %d][rfpath %d] %d)\n",
       regulation, bw, rate_section,
       channel, rtlphy->txpwr_limit_5g[regulation]
       [bw][rate_section][channel][rf_path],
       temp_pwrlmt, channel, rf_path, bw40_pwr_base_dbm5G);
     }
    }
   }
  }
 }
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
   "<===== _rtl8812ae_phy_convert_txpower_limit_to_power_index()\n");
}
