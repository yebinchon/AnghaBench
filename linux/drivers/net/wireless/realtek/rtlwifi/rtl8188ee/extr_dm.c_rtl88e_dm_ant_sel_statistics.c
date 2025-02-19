
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef size_t u32 ;
struct rtl_efuse {scalar_t__ antenna_div_type; } ;
struct fast_ant_training {int * aux_ant_cnt; int * aux_ant_sum; int * main_ant_cnt; int * main_ant_sum; } ;
struct rtl_dm {struct fast_ant_training fat_table; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ MAIN_ANT_CGCS_RX ;
 scalar_t__ MAIN_ANT_CG_TRX ;
 struct rtl_dm* rtl_dm (int ) ;
 struct rtl_efuse* rtl_efuse (int ) ;
 int rtl_priv (struct ieee80211_hw*) ;

void rtl88e_dm_ant_sel_statistics(struct ieee80211_hw *hw,
      u8 antsel_tr_mux, u32 mac_id,
      u32 rx_pwdb_all)
{
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 struct rtl_dm *rtldm = rtl_dm(rtl_priv(hw));
 struct fast_ant_training *pfat_table = &rtldm->fat_table;

 if (rtlefuse->antenna_div_type == CG_TRX_HW_ANTDIV) {
  if (antsel_tr_mux == MAIN_ANT_CG_TRX) {
   pfat_table->main_ant_sum[mac_id] += rx_pwdb_all;
   pfat_table->main_ant_cnt[mac_id]++;
  } else {
   pfat_table->aux_ant_sum[mac_id] += rx_pwdb_all;
   pfat_table->aux_ant_cnt[mac_id]++;
  }
 } else if (rtlefuse->antenna_div_type == CGCS_RX_HW_ANTDIV) {
  if (antsel_tr_mux == MAIN_ANT_CGCS_RX) {
   pfat_table->main_ant_sum[mac_id] += rx_pwdb_all;
   pfat_table->main_ant_cnt[mac_id]++;
  } else {
   pfat_table->aux_ant_sum[mac_id] += rx_pwdb_all;
   pfat_table->aux_ant_cnt[mac_id]++;
  }
 }
}
