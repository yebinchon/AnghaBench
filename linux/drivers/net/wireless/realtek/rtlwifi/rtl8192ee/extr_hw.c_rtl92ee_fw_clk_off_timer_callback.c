
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _rtl92ee_set_fw_ps_rf_off_low_power (struct ieee80211_hw*) ;

void rtl92ee_fw_clk_off_timer_callback(unsigned long data)
{
 struct ieee80211_hw *hw = (struct ieee80211_hw *)data;

 _rtl92ee_set_fw_ps_rf_off_low_power(hw);
}
