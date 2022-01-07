
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct txpower_info_5g {int dummy; } ;
struct txpower_info_2g {int ** ofdm_diff; int ** bw40_diff; int ** bw20_diff; int ** index_bw40_base; int ** index_cck_base; } ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int eeprom_thermalmeter; int apk_thermalmeterignore; int* thermalmeter; int eeprom_regulatory; int ** txpwrlevel_ht40_1s; int ** txpwrlevel_cck; int ** txpwr_legacyhtdiff; int ** txpwr_ht40diff; int ** txpwr_ht20diff; } ;
struct ieee80211_hw {int dummy; } ;


 void* EEPROM_DEFAULT_THERMALMETER ;
 size_t EEPROM_RF_BOARD_OPTION_88E ;
 size_t EEPROM_THERMAL_METER_88E ;
 int FINIT ;
 int INIT_TXPOWER ;
 int MAX_TX_COUNT ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,int,...) ;
 int _rtl8723be_get_chnl_group (int) ;
 int _rtl8723be_read_power_value_fromprom (struct ieee80211_hw*,struct txpower_info_2g*,struct txpower_info_5g*,int,int*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl8723be_read_txpower_info_from_hwpg(struct ieee80211_hw *hw,
         bool autoload_fail,
         u8 *hwinfo)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct txpower_info_2g pw2g;
 struct txpower_info_5g pw5g;
 u8 rf_path, index;
 u8 i;

 _rtl8723be_read_power_value_fromprom(hw, &pw2g, &pw5g, autoload_fail,
          hwinfo);

 for (rf_path = 0; rf_path < 2; rf_path++) {
  for (i = 0; i < 14; i++) {
   index = _rtl8723be_get_chnl_group(i+1);

   rtlefuse->txpwrlevel_cck[rf_path][i] =
     pw2g.index_cck_base[rf_path][index];
   rtlefuse->txpwrlevel_ht40_1s[rf_path][i] =
     pw2g.index_bw40_base[rf_path][index];
  }
  for (i = 0; i < MAX_TX_COUNT; i++) {
   rtlefuse->txpwr_ht20diff[rf_path][i] =
      pw2g.bw20_diff[rf_path][i];
   rtlefuse->txpwr_ht40diff[rf_path][i] =
      pw2g.bw40_diff[rf_path][i];
   rtlefuse->txpwr_legacyhtdiff[rf_path][i] =
      pw2g.ofdm_diff[rf_path][i];
  }

  for (i = 0; i < 14; i++) {
   RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
    "RF(%d)-Ch(%d) [CCK / HT40_1S ] = [0x%x / 0x%x ]\n",
    rf_path, i,
    rtlefuse->txpwrlevel_cck[rf_path][i],
    rtlefuse->txpwrlevel_ht40_1s[rf_path][i]);
  }
 }

 if (!autoload_fail)
  rtlefuse->eeprom_thermalmeter =
     hwinfo[EEPROM_THERMAL_METER_88E];
 else
  rtlefuse->eeprom_thermalmeter = EEPROM_DEFAULT_THERMALMETER;

 if (rtlefuse->eeprom_thermalmeter == 0xff || autoload_fail) {
  rtlefuse->apk_thermalmeterignore = 1;
  rtlefuse->eeprom_thermalmeter = EEPROM_DEFAULT_THERMALMETER;
 }

 rtlefuse->thermalmeter[0] = rtlefuse->eeprom_thermalmeter;
 RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
  "thermalmeter = 0x%x\n", rtlefuse->eeprom_thermalmeter);

 if (!autoload_fail) {
  rtlefuse->eeprom_regulatory =
   hwinfo[EEPROM_RF_BOARD_OPTION_88E] & 0x07;
  if (hwinfo[EEPROM_RF_BOARD_OPTION_88E] == 0xFF)
   rtlefuse->eeprom_regulatory = 0;
 } else {
  rtlefuse->eeprom_regulatory = 0;
 }
 RTPRINT(rtlpriv, FINIT, INIT_TXPOWER,
  "eeprom_regulatory = 0x%x\n", rtlefuse->eeprom_regulatory);
}
