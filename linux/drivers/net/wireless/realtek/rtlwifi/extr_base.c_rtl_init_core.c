
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int queue; } ;
struct TYPE_5__ {int list; } ;
struct TYPE_4__ {int iqk_lock; int fw_ps_lock; int cck_and_rw_pagea_lock; int scan_list_lock; int c2hcmd_lock; int entry_list_lock; int waitq_lock; int rf_lock; int rf_ps_lock; int h2c_lock; int irq_th_lock; int lps_mutex; int ips_mutex; int conf_mutex; } ;
struct rtl_priv {int c2hcmd_queue; TYPE_3__ tx_report; TYPE_2__ scan_list; int entry_list; TYPE_1__ locks; } ;
struct rtl_mac {int link_state; struct ieee80211_hw* hw; } ;
struct ieee80211_hw {char* rate_control_algorithm; } ;


 int INIT_LIST_HEAD (int *) ;
 int MAC80211_NOLINK ;
 int _rtl_init_deferred_work (struct ieee80211_hw*) ;
 int _rtl_init_mac80211 (struct ieee80211_hw*) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_reg_notifier ;
 scalar_t__ rtl_regd_init (struct ieee80211_hw*,int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;

int rtl_init_core(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *rtlmac = rtl_mac(rtl_priv(hw));


 _rtl_init_mac80211(hw);
 rtlmac->hw = hw;


 hw->rate_control_algorithm = "rtl_rc";





 if (rtl_regd_init(hw, rtl_reg_notifier)) {
  pr_err("REGD init failed\n");
  return 1;
 }


 mutex_init(&rtlpriv->locks.conf_mutex);
 mutex_init(&rtlpriv->locks.ips_mutex);
 mutex_init(&rtlpriv->locks.lps_mutex);
 spin_lock_init(&rtlpriv->locks.irq_th_lock);
 spin_lock_init(&rtlpriv->locks.h2c_lock);
 spin_lock_init(&rtlpriv->locks.rf_ps_lock);
 spin_lock_init(&rtlpriv->locks.rf_lock);
 spin_lock_init(&rtlpriv->locks.waitq_lock);
 spin_lock_init(&rtlpriv->locks.entry_list_lock);
 spin_lock_init(&rtlpriv->locks.c2hcmd_lock);
 spin_lock_init(&rtlpriv->locks.scan_list_lock);
 spin_lock_init(&rtlpriv->locks.cck_and_rw_pagea_lock);
 spin_lock_init(&rtlpriv->locks.fw_ps_lock);
 spin_lock_init(&rtlpriv->locks.iqk_lock);

 INIT_LIST_HEAD(&rtlpriv->entry_list);
 INIT_LIST_HEAD(&rtlpriv->scan_list.list);
 skb_queue_head_init(&rtlpriv->tx_report.queue);
 skb_queue_head_init(&rtlpriv->c2hcmd_queue);

 rtlmac->link_state = MAC80211_NOLINK;


 _rtl_init_deferred_work(hw);

 return 0;
}
