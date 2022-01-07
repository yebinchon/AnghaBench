
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txpower_info_5g {int** index_bw40_base; int ** bw80_diff; int ** bw40_diff; int ** bw20_diff; int ** ofdm_diff; } ;
struct txpower_info_2g {int ** bw40_diff; int ** bw20_diff; int ** ofdm_diff; int ** cck_diff; int ** index_bw40_base; int ** index_cck_base; } ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int** txpwr_5g_bw40base; int** txpwr_5g_bw80base; int eeprom_regulatory; int ** txpwr_5g_bw80diff; int ** txpwr_5g_bw40diff; int ** txpwr_5g_bw20diff; int ** txpwr_5g_ofdmdiff; int ** txpwr_ht40diff; int ** txpwr_ht20diff; int ** txpwr_legacyhtdiff; int ** txpwr_cckdiff; int ** txpwrlevel_ht40_1s; int ** txpwrlevel_cck; } ;
struct ieee80211_hw {int dummy; } ;


 int CHANNEL_MAX_NUMBER_2G ;
 int CHANNEL_MAX_NUMBER_5G ;
 int CHANNEL_MAX_NUMBER_5G_80M ;
 size_t EEPROM_RF_BOARD_OPTION ;
 int FINIT ;
 int INIT_TXPOWER ;
 int MAX_TX_COUNT ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl8821ae_get_chnl_group (int) ;
 int _rtl8821ae_read_power_value_fromprom (struct ieee80211_hw*,struct txpower_info_2g*,struct txpower_info_5g*,int,int*) ;
 int* channel5g ;
 int* channel5g_80m ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8821ae_read_txpower_info_from_hwpg(struct ieee80211_hw *hw,
       bool autoload_fail,
       u8 *hwinfo)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct txpower_info_2g pwrinfo24g;
 struct txpower_info_5g pwrinfo5g;
 u8 rf_path, index;
 u8 i;

 _rtl8821ae_read_power_value_fromprom(hw, &pwrinfo24g,
  &pwrinfo5g, autoload_fail, hwinfo);

 for (rf_path = 0; rf_path < 2; rf_path++) {
  for (i = 0; i < CHANNEL_MAX_NUMBER_2G; i++) {
   index = _rtl8821ae_get_chnl_group(i + 1);

   if (i == CHANNEL_MAX_NUMBER_2G - 1) {
    rtlefuse->txpwrlevel_cck[rf_path][i] =
     pwrinfo24g.index_cck_base[rf_path][5];
    rtlefuse->txpwrlevel_ht40_1s[rf_path][i] =
     pwrinfo24g.index_bw40_base[rf_path][index];
   } else {
    rtlefuse->txpwrlevel_cck[rf_path][i] =
     pwrinfo24g.index_cck_base[rf_path][index];
    rtlefuse->txpwrlevel_ht40_1s[rf_path][i] =
     pwrinfo24g.index_bw40_base[rf_path][index];
   }
  }

  for (i = 0; i < CHANNEL_MAX_NUMBER_5G; i++) {
   index = _rtl8821ae_get_chnl_group(channel5g[i]);
   rtlefuse->txpwr_5g_bw40base[rf_path][i] =
    pwrinfo5g.index_bw40_base[rf_path][index];
  }
  for (i = 0; i < CHANNEL_MAX_NUMBER_5G_80M; i++) {
   u8 upper, lower;
   index = _rtl8821ae_get_chnl_group(channel5g_80m[i]);
   upper = pwrinfo5g.index_bw40_base[rf_path][index];
   lower = pwrinfo5g.index_bw40_base[rf_path][index + 1];

   rtlefuse->txpwr_5g_bw80base[rf_path][i] = (upper + lower) / 2;
  }
  for (i = 0; i < MAX_TX_COUNT; i++) {
   rtlefuse->txpwr_cckdiff[rf_path][i] =
    pwrinfo24g.cck_diff[rf_path][i];
   rtlefuse->txpwr_legacyhtdiff[rf_path][i] =
    pwrinfo24g.ofdm_diff[rf_path][i];
   rtlefuse->txpwr_ht20diff[rf_path][i] =
    pwrinfo24g.bw20_diff[rf_path][i];
   rtlefuse->txpwr_ht40diff[rf_path][i] =
    pwrinfo24g.bw40_diff[rf_path][i];

   rtlefuse->txpwr_5g_ofdmdiff[rf_path][i] =
    pwrinfo5g.ofdm_diff[rf_path][i];
   rtlefuse->txpwr_5g_bw20diff[rf_path][i] =
    pwrinfo5g.bw20_diff[rf_path][i];
   rtlefuse->txpwr_5g_bw40diff[rf_path][i] =
    pwrinfo5g.bw40_diff[rf_path][i];
   rtlefuse->txpwr_5g_bw80diff[rf_path][i] =
    pwrinfo5g.bw80_diff[rf_path][i];
  }
 }

 if (!autoload_fail) {
  rtlefuse->eeprom_regulatory = hwinfo[EEPROM_RF_BOARD_OPTION] & 0x07;
  if (hwinfo[EEPROM_RF_BOARD_OPTION] == 0xFF)
   rtlefuse->eeprom_regulatory = 0;
 } else {
  rtlefuse->eeprom_regulatory = 0;
 }

 RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
 "eeprom_regulatory = 0x%x\n", rtlefuse->eeprom_regulatory);
}
