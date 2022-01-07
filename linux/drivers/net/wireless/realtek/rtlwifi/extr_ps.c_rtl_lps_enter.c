
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lps_change_work; } ;
struct rtl_priv {int enter_ps; TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;


 int in_interrupt () ;
 void rtl_lps_enter_core (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int schedule_work (int *) ;

void rtl_lps_enter(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (!in_interrupt())
  return rtl_lps_enter_core(hw);
 rtlpriv->enter_ps = 1;
 schedule_work(&rtlpriv->works.lps_change_work);
}
