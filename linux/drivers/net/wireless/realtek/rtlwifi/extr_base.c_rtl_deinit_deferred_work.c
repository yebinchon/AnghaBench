
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c2hcmd_wq; int fwevt_wq; int ps_rfon_wq; int ps_work; int ips_nic_off_wq; int watchdog_wq; int watchdog_timer; } ;
struct rtl_priv {TYPE_1__ works; } ;
struct ieee80211_hw {int dummy; } ;


 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl_deinit_deferred_work(struct ieee80211_hw *hw, bool ips_wq)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 del_timer_sync(&rtlpriv->works.watchdog_timer);

 cancel_delayed_work_sync(&rtlpriv->works.watchdog_wq);
 if (ips_wq)
  cancel_delayed_work(&rtlpriv->works.ips_nic_off_wq);
 else
  cancel_delayed_work_sync(&rtlpriv->works.ips_nic_off_wq);
 cancel_delayed_work_sync(&rtlpriv->works.ps_work);
 cancel_delayed_work_sync(&rtlpriv->works.ps_rfon_wq);
 cancel_delayed_work_sync(&rtlpriv->works.fwevt_wq);
 cancel_delayed_work_sync(&rtlpriv->works.c2hcmd_wq);
}
