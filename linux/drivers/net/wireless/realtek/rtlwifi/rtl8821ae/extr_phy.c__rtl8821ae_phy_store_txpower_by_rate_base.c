
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct rtl_phy {int**** tx_power_by_rate_offset; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 size_t BAND_ON_2_4G ;
 size_t BAND_ON_5G ;
 int CCK ;
 int HT_MCS0_MCS7 ;
 int HT_MCS8_MCS15 ;
 int OFDM ;
 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 size_t RF_1TX ;
 size_t RF_2TX ;
 int VHT_1SSMCS0_1SSMCS9 ;
 int VHT_2SSMCS0_2SSMCS9 ;
 int _rtl8821ae_phy_set_txpower_by_rate_base (struct ieee80211_hw*,size_t,size_t,int ,size_t,size_t) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_phy_store_txpower_by_rate_base(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u16 rawvalue = 0;
 u8 base = 0, path = 0;

 for (path = RF90_PATH_A; path <= RF90_PATH_B; ++path) {
  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_1TX][0] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, CCK, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_1TX][2] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, OFDM, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_1TX][4] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, HT_MCS0_MCS7, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_2TX][6] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, HT_MCS8_MCS15, RF_2TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_1TX][8] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, VHT_1SSMCS0_1SSMCS9, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_2_4G][path][RF_2TX][11] >> 8) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_2_4G, path, VHT_2SSMCS0_2SSMCS9, RF_2TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_5G][path][RF_1TX][2] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_5G, path, OFDM, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_5G][path][RF_1TX][4] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_5G, path, HT_MCS0_MCS7, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_5G][path][RF_2TX][6] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_5G, path, HT_MCS8_MCS15, RF_2TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_5G][path][RF_1TX][8] >> 24) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_5G, path, VHT_1SSMCS0_1SSMCS9, RF_1TX, base);

  rawvalue = (u16)(rtlphy->tx_power_by_rate_offset[BAND_ON_5G][path][RF_2TX][11] >> 8) & 0xFF;
  base = (rawvalue >> 4) * 10 + (rawvalue & 0xF);
  _rtl8821ae_phy_set_txpower_by_rate_base(hw, BAND_ON_5G, path, VHT_2SSMCS0_2SSMCS9, RF_2TX, base);
 }
}
