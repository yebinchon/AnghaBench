
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct rtl_priv {struct ieee80211_hw* hw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {int fast_antenna_training_timer; } ;


 struct rtl_priv* from_timer (int ,struct timer_list*,int ) ;
 int rtl88e_dm_fast_ant_training (struct ieee80211_hw*) ;
 struct rtl_priv* rtlpriv ;
 TYPE_1__ works ;

void rtl88e_dm_fast_antenna_training_callback(struct timer_list *t)
{
 struct rtl_priv *rtlpriv =
  from_timer(rtlpriv, t, works.fast_antenna_training_timer);
 struct ieee80211_hw *hw = rtlpriv->hw;

 rtl88e_dm_fast_ant_training(hw);
}
