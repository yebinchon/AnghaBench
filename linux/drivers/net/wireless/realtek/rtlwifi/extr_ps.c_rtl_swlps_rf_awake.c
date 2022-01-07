
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtl_ps_ctl {int reg_rfps_level; } ;
struct TYPE_5__ {int lps_mutex; } ;
struct TYPE_6__ {int swctrl_lps; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_1__* intf_ops; TYPE_3__ psc; } ;
struct rtl_mac {scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int (* disable_aspm ) (struct ieee80211_hw*) ;} ;


 int ERFON ;
 scalar_t__ MAC80211_LINKED ;
 int RF_CHANGE_BY_PS ;
 int RT_CLEAR_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 scalar_t__ RT_IN_PS_LEVEL (struct rtl_ps_ctl*,int ) ;
 int RT_PS_LEVEL_ASPM ;
 int RT_RF_LPS_LEVEL_ASPM ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_ps_set_rf_state (struct ieee80211_hw*,int ,int ) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*) ;

void rtl_swlps_rf_awake(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));

 if (!rtlpriv->psc.swctrl_lps)
  return;
 if (mac->link_state != MAC80211_LINKED)
  return;

 if (ppsc->reg_rfps_level & RT_RF_LPS_LEVEL_ASPM &&
     RT_IN_PS_LEVEL(ppsc, RT_PS_LEVEL_ASPM)) {
  rtlpriv->intf_ops->disable_aspm(hw);
  RT_CLEAR_PS_LEVEL(ppsc, RT_PS_LEVEL_ASPM);
 }

 mutex_lock(&rtlpriv->locks.lps_mutex);
 rtl_ps_set_rf_state(hw, ERFON, RF_CHANGE_BY_PS);
 mutex_unlock(&rtlpriv->locks.lps_mutex);
}
