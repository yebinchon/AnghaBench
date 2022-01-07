
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int fast_antenna_training_timer; int fw_clockoff_timer; } ;
struct TYPE_5__ {scalar_t__ low_power_enable; } ;
struct TYPE_4__ {int * pfirmware; } ;
struct rtl_priv {TYPE_3__ works; TYPE_2__ psc; TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;


 int del_timer_sync (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int vfree (int *) ;

void rtl88e_deinit_sw_vars(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->rtlhal.pfirmware) {
  vfree(rtlpriv->rtlhal.pfirmware);
  rtlpriv->rtlhal.pfirmware = ((void*)0);
 }

 if (rtlpriv->psc.low_power_enable)
  del_timer_sync(&rtlpriv->works.fw_clockoff_timer);

 del_timer_sync(&rtlpriv->works.fast_antenna_training_timer);
}
