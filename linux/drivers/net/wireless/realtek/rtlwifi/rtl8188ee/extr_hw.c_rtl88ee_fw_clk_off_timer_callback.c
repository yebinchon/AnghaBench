
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rtl_priv {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int fw_clockoff_timer; } ;


 int _rtl88ee_set_fw_ps_rf_off_low_power (struct ieee80211_hw*) ;
 struct rtl_priv* from_timer (int ,struct timer_list*,int ) ;
 struct rtl_priv* rtlpriv ;
 TYPE_1__ works ;

void rtl88ee_fw_clk_off_timer_callback(struct timer_list *t)
{
 struct rtl_priv *rtlpriv = from_timer(rtlpriv, t,
           works.fw_clockoff_timer);
 struct ieee80211_hw *hw = rtlpriv->hw;

 _rtl88ee_set_fw_ps_rf_off_low_power(hw);
}
