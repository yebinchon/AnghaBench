
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txpower_info_5g {int** index_bw40_base; int ** bw80_diff; int ** bw40_diff; int ** bw20_diff; int ** ofdm_diff; } ;
struct txpower_info_2g {int ** bw40_diff; int ** bw20_diff; int ** ofdm_diff; int ** cck_diff; int ** index_bw40_base; int ** index_cck_base; } ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int** txpwr_5g_bw40base; int** txpwr_5g_bw80base; int eeprom_thermalmeter; int apk_thermalmeterignore; int* thermalmeter; int eeprom_regulatory; int ** txpwr_5g_bw80diff; int ** txpwr_5g_bw40diff; int ** txpwr_5g_bw20diff; int ** txpwr_5g_ofdmdiff; int ** txpwr_ht40diff; int ** txpwr_ht20diff; int ** txpwr_legacyhtdiff; int ** txpwr_cckdiff; int ** txpwrlevel_ht40_1s; int ** txpwrlevel_cck; } ;
struct ieee80211_hw {int dummy; } ;


 int CHANNEL_MAX_NUMBER_2G ;
 int CHANNEL_MAX_NUMBER_5G ;
 int CHANNEL_MAX_NUMBER_5G_80M ;
 void* EEPROM_DEFAULT_THERMALMETER ;
 size_t EEPROM_RF_BOARD_OPTION_92E ;
 size_t EEPROM_THERMAL_METER_92E ;
 int FINIT ;
 int INIT_TXPOWER ;
 int MAX_RF_PATH ;
 int MAX_TX_COUNT ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,int) ;
 int _rtl8192ee_read_power_value_fromprom (struct ieee80211_hw*,struct txpower_info_2g*,struct txpower_info_5g*,int,int*) ;
 int _rtl92ee_get_chnl_group (int) ;
 int* channel5g ;
 int* channel5g_80m ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ee_read_txpower_info_from_hwpg(struct ieee80211_hw *hw,
       bool autoload_fail, u8 *hwinfo)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *efu = rtl_efuse(rtl_priv(hw));
 struct txpower_info_2g pwr2g;
 struct txpower_info_5g pwr5g;
 u8 rf, idx;
 u8 i;

 _rtl8192ee_read_power_value_fromprom(hw, &pwr2g, &pwr5g,
          autoload_fail, hwinfo);

 for (rf = 0; rf < MAX_RF_PATH; rf++) {
  for (i = 0; i < 14; i++) {
   idx = _rtl92ee_get_chnl_group(i + 1);

   if (i == CHANNEL_MAX_NUMBER_2G - 1) {
    efu->txpwrlevel_cck[rf][i] =
      pwr2g.index_cck_base[rf][5];
    efu->txpwrlevel_ht40_1s[rf][i] =
      pwr2g.index_bw40_base[rf][idx];
   } else {
    efu->txpwrlevel_cck[rf][i] =
      pwr2g.index_cck_base[rf][idx];
    efu->txpwrlevel_ht40_1s[rf][i] =
      pwr2g.index_bw40_base[rf][idx];
   }
  }
  for (i = 0; i < CHANNEL_MAX_NUMBER_5G; i++) {
   idx = _rtl92ee_get_chnl_group(channel5g[i]);
   efu->txpwr_5g_bw40base[rf][i] =
     pwr5g.index_bw40_base[rf][idx];
  }
  for (i = 0; i < CHANNEL_MAX_NUMBER_5G_80M; i++) {
   u8 upper, lower;

   idx = _rtl92ee_get_chnl_group(channel5g_80m[i]);
   upper = pwr5g.index_bw40_base[rf][idx];
   lower = pwr5g.index_bw40_base[rf][idx + 1];

   efu->txpwr_5g_bw80base[rf][i] = (upper + lower) / 2;
  }
  for (i = 0; i < MAX_TX_COUNT; i++) {
   efu->txpwr_cckdiff[rf][i] = pwr2g.cck_diff[rf][i];
   efu->txpwr_legacyhtdiff[rf][i] = pwr2g.ofdm_diff[rf][i];
   efu->txpwr_ht20diff[rf][i] = pwr2g.bw20_diff[rf][i];
   efu->txpwr_ht40diff[rf][i] = pwr2g.bw40_diff[rf][i];

   efu->txpwr_5g_ofdmdiff[rf][i] = pwr5g.ofdm_diff[rf][i];
   efu->txpwr_5g_bw20diff[rf][i] = pwr5g.bw20_diff[rf][i];
   efu->txpwr_5g_bw40diff[rf][i] = pwr5g.bw40_diff[rf][i];
   efu->txpwr_5g_bw80diff[rf][i] = pwr5g.bw80_diff[rf][i];
  }
 }

 if (!autoload_fail)
  efu->eeprom_thermalmeter = hwinfo[EEPROM_THERMAL_METER_92E];
 else
  efu->eeprom_thermalmeter = EEPROM_DEFAULT_THERMALMETER;

 if (efu->eeprom_thermalmeter == 0xff || autoload_fail) {
  efu->apk_thermalmeterignore = 1;
  efu->eeprom_thermalmeter = EEPROM_DEFAULT_THERMALMETER;
 }

 efu->thermalmeter[0] = efu->eeprom_thermalmeter;
 RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
  "thermalmeter = 0x%x\n", efu->eeprom_thermalmeter);

 if (!autoload_fail) {
  efu->eeprom_regulatory = hwinfo[EEPROM_RF_BOARD_OPTION_92E]
      & 0x07;
  if (hwinfo[EEPROM_RF_BOARD_OPTION_92E] == 0xFF)
   efu->eeprom_regulatory = 0;
 } else {
  efu->eeprom_regulatory = 0;
 }
 RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
  "eeprom_regulatory = 0x%x\n", efu->eeprom_regulatory);
}
