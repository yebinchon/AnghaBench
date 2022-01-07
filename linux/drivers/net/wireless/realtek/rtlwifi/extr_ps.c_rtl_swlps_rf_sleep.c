
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int reg_rfps_level; } ;
struct TYPE_16__ {int ps_rfon_wq; int rtl_wq; } ;
struct TYPE_15__ {int dtim_counter; scalar_t__ rfchange_inprogress; int sw_ps_enabled; } ;
struct TYPE_12__ {int lps_mutex; int rf_ps_lock; } ;
struct TYPE_11__ {scalar_t__ busytraffic; } ;
struct TYPE_10__ {scalar_t__ being_setkey; } ;
struct rtl_priv {TYPE_7__ works; TYPE_6__ psc; TYPE_4__* intf_ops; TYPE_3__ locks; TYPE_2__ link_info; TYPE_1__ sec; } ;
struct rtl_mac {scalar_t__ opmode; scalar_t__ link_state; int cnt_after_linked; TYPE_9__* vif; } ;
struct TYPE_14__ {int ps_dtim_period; } ;
struct ieee80211_hw {TYPE_5__ conf; } ;
struct TYPE_17__ {int beacon_int; } ;
struct TYPE_18__ {TYPE_8__ bss_conf; } ;
struct TYPE_13__ {int (* enable_aspm ) (struct ieee80211_hw*) ;} ;


 int COMP_POWER ;
 int DBG_DMESG ;
 int ERFSLEEP ;
 scalar_t__ MAC80211_LINKED ;
 int MAX_SW_LPS_SLEEP_INTV ;
 int MSECS (int) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int RF_CHANGE_BY_PS ;
 int RT_IN_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int RT_PS_LEVEL_ASPM ;
 int RT_RF_OFF_LEVL_ASPM ;
 int RT_SET_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_ps_set_rf_state (struct ieee80211_hw*,int ,int ) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ieee80211_hw*) ;

void rtl_swlps_rf_sleep(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 u8 sleep_intv;

 if (!rtlpriv->psc.sw_ps_enabled)
  return;

 if ((rtlpriv->sec.being_setkey) ||
     (mac->opmode == NL80211_IFTYPE_ADHOC))
  return;


 if ((mac->link_state != MAC80211_LINKED) || (mac->cnt_after_linked < 5))
  return;

 if (rtlpriv->link_info.busytraffic)
  return;

 spin_lock(&rtlpriv->locks.rf_ps_lock);
 if (rtlpriv->psc.rfchange_inprogress) {
  spin_unlock(&rtlpriv->locks.rf_ps_lock);
  return;
 }
 spin_unlock(&rtlpriv->locks.rf_ps_lock);

 mutex_lock(&rtlpriv->locks.lps_mutex);
 rtl_ps_set_rf_state(hw, ERFSLEEP, RF_CHANGE_BY_PS);
 mutex_unlock(&rtlpriv->locks.lps_mutex);

 if (ppsc->reg_rfps_level & RT_RF_OFF_LEVL_ASPM &&
     !RT_IN_PS_LEVEL(ppsc, RT_PS_LEVEL_ASPM)) {
  rtlpriv->intf_ops->enable_aspm(hw);
  RT_SET_PS_LEVEL(ppsc, RT_PS_LEVEL_ASPM);
 }







 if (rtlpriv->psc.dtim_counter == 0) {
  if (hw->conf.ps_dtim_period == 1)
   sleep_intv = hw->conf.ps_dtim_period * 2;
  else
   sleep_intv = hw->conf.ps_dtim_period;
 } else {
  sleep_intv = rtlpriv->psc.dtim_counter;
 }

 if (sleep_intv > MAX_SW_LPS_SLEEP_INTV)
  sleep_intv = MAX_SW_LPS_SLEEP_INTV;




 RT_TRACE(rtlpriv, COMP_POWER, DBG_DMESG,
   "dtim_counter:%x will sleep :%d beacon_intv\n",
    rtlpriv->psc.dtim_counter, sleep_intv);


 queue_delayed_work(rtlpriv->works.rtl_wq, &rtlpriv->works.ps_rfon_wq,
   MSECS(sleep_intv * mac->vif->bss_conf.beacon_int - 40));
}
