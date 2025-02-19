
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct rtl_priv {int dummy; } ;
struct rtl_efuse {int eeprom_thermalmeter; } ;
struct rtl_dm {int modify_txagc_flag_path_a; int modify_txagc_flag_path_b; int thermalvalue_lck; int thermalvalue_iqk; int thermalvalue; scalar_t__ remnant_cck_idx; scalar_t__* remnant_ofdm_swing_idx; scalar_t__* absolute_ofdm_swing_idx; scalar_t__* delta_power_index_last; scalar_t__* delta_power_index; scalar_t__* power_index_offset; int default_ofdm_index; int * ofdm_index; int * swing_idx_ofdm; int * swing_idx_ofdm_base; scalar_t__ cck_index; int default_cck_index; int swing_idx_cck; int swing_idx_cck_base; } ;
struct ieee80211_hw {int dummy; } ;


 size_t RF90_PATH_A ;
 size_t RF90_PATH_B ;
 struct rtl_dm* rtl_dm (struct rtl_priv*) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_dm_clear_txpower_tracking_state(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_dm *rtldm = rtl_dm(rtlpriv);
 struct rtl_efuse *rtlefuse = rtl_efuse(rtlpriv);
 u8 p = 0;

 rtldm->swing_idx_cck_base = rtldm->default_cck_index;
 rtldm->swing_idx_cck = rtldm->default_cck_index;
 rtldm->cck_index = 0;

 for (p = RF90_PATH_A; p <= RF90_PATH_B; ++p) {
  rtldm->swing_idx_ofdm_base[p] = rtldm->default_ofdm_index;
  rtldm->swing_idx_ofdm[p] = rtldm->default_ofdm_index;
  rtldm->ofdm_index[p] = rtldm->default_ofdm_index;

  rtldm->power_index_offset[p] = 0;
  rtldm->delta_power_index[p] = 0;
  rtldm->delta_power_index_last[p] = 0;

  rtldm->absolute_ofdm_swing_idx[p] = 0;
  rtldm->remnant_ofdm_swing_idx[p] = 0;
 }

 rtldm->modify_txagc_flag_path_a = 0;

 rtldm->modify_txagc_flag_path_b = 0;
 rtldm->remnant_cck_idx = 0;
 rtldm->thermalvalue = rtlefuse->eeprom_thermalmeter;
 rtldm->thermalvalue_iqk = rtlefuse->eeprom_thermalmeter;
 rtldm->thermalvalue_lck = rtlefuse->eeprom_thermalmeter;
}
