
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int c2hcmd_wq; int fwevt_wq; int ps_rfon_wq; int ps_work; int ips_nic_off_wq; int watchdog_wq; int rtl_wq; struct ieee80211_hw* hw; int dualmac_easyconcurrent_retrytimer; int watchdog_timer; } ;
struct rtl_priv {TYPE_2__ works; TYPE_1__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_3__ {int name; } ;


 int INIT_DELAYED_WORK (int *,void*) ;
 int alloc_workqueue (char*,int ,int ,int ) ;
 int pr_err (char*) ;
 scalar_t__ rtl_c2hcmd_wq_callback ;
 int rtl_easy_concurrent_retrytimer_callback ;
 scalar_t__ rtl_fwevt_wq_callback ;
 scalar_t__ rtl_ips_nic_off_wq_callback ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 scalar_t__ rtl_swlps_rfon_wq_callback ;
 scalar_t__ rtl_swlps_wq_callback ;
 int rtl_watch_dog_timer_callback ;
 scalar_t__ rtl_watchdog_wq_callback ;
 int timer_setup (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void _rtl_init_deferred_work(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 timer_setup(&rtlpriv->works.watchdog_timer,
      rtl_watch_dog_timer_callback, 0);
 timer_setup(&rtlpriv->works.dualmac_easyconcurrent_retrytimer,
      rtl_easy_concurrent_retrytimer_callback, 0);

 rtlpriv->works.hw = hw;
 rtlpriv->works.rtl_wq = alloc_workqueue("%s", 0, 0, rtlpriv->cfg->name);
 if (unlikely(!rtlpriv->works.rtl_wq)) {
  pr_err("Failed to allocate work queue\n");
  return;
 }

 INIT_DELAYED_WORK(&rtlpriv->works.watchdog_wq,
     (void *)rtl_watchdog_wq_callback);
 INIT_DELAYED_WORK(&rtlpriv->works.ips_nic_off_wq,
     (void *)rtl_ips_nic_off_wq_callback);
 INIT_DELAYED_WORK(&rtlpriv->works.ps_work,
     (void *)rtl_swlps_wq_callback);
 INIT_DELAYED_WORK(&rtlpriv->works.ps_rfon_wq,
     (void *)rtl_swlps_rfon_wq_callback);
 INIT_DELAYED_WORK(&rtlpriv->works.fwevt_wq,
     (void *)rtl_fwevt_wq_callback);
 INIT_DELAYED_WORK(&rtlpriv->works.c2hcmd_wq,
     (void *)rtl_c2hcmd_wq_callback);
}
