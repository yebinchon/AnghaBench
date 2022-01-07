
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_ps_ctl {scalar_t__ rfpwr_state; int rfchange_inprogress; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ ERFON ;
 int rtl92d_dm_check_edca_turbo (struct ieee80211_hw*) ;
 int rtl92d_dm_dig (struct ieee80211_hw*) ;
 int rtl92d_dm_dynamic_txpower (struct ieee80211_hw*) ;
 int rtl92d_dm_false_alarm_counter_statistics (struct ieee80211_hw*) ;
 int rtl92d_dm_find_minimum_rssi (struct ieee80211_hw*) ;
 int rtl92d_dm_pwdb_monitor (struct ieee80211_hw*) ;
 int rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (int ) ;

void rtl92d_dm_watchdog(struct ieee80211_hw *hw)
{
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool fw_current_inpsmode = 0;
 bool fwps_awake = 1;
 if ((ppsc->rfpwr_state == ERFON) && ((!fw_current_inpsmode) &&
     fwps_awake) && (!ppsc->rfchange_inprogress)) {
  rtl92d_dm_pwdb_monitor(hw);
  rtl92d_dm_false_alarm_counter_statistics(hw);
  rtl92d_dm_find_minimum_rssi(hw);
  rtl92d_dm_dig(hw);

  rtl92d_dm_dynamic_txpower(hw);



  rtl92d_dm_check_edca_turbo(hw);
 }
}
