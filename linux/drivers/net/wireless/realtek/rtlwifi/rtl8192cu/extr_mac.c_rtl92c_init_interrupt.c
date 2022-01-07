
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int rtl92c_enable_interrupt (struct ieee80211_hw*) ;

void rtl92c_init_interrupt(struct ieee80211_hw *hw)
{
  rtl92c_enable_interrupt(hw);
}
