
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct rtl_ps_ctl {int rfchange_inprogress; int rfpwr_state; int hwradiooff; int rfoff_reason; } ;
struct TYPE_6__ {int rf_ps_lock; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum rf_pwrstate { ____Placeholder_rf_pwrstate } rf_pwrstate ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* set_rf_power_state ) (struct ieee80211_hw*,int) ;} ;


 int COMP_ERR ;
 int DBG_WARNING ;



 int RF_CHANGE_BY_HW ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int mdelay (int) ;
 int pr_err (char*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ieee80211_hw*,int) ;

__attribute__((used)) static bool rtl_ps_set_rf_state(struct ieee80211_hw *hw,
    enum rf_pwrstate state_toset,
    u32 changesource)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 enum rf_pwrstate rtstate;
 bool actionallowed = 0;
 u16 rfwait_cnt = 0;





 while (1) {
  spin_lock(&rtlpriv->locks.rf_ps_lock);
  if (ppsc->rfchange_inprogress) {
   spin_unlock(&rtlpriv->locks.rf_ps_lock);

   RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
     "RF Change in progress! Wait to set..state_toset(%d).\n",
      state_toset);


   while (ppsc->rfchange_inprogress) {
    rfwait_cnt++;
    mdelay(1);



    if (rfwait_cnt > 100)
     return 0;
   }
  } else {
   ppsc->rfchange_inprogress = 1;
   spin_unlock(&rtlpriv->locks.rf_ps_lock);
   break;
  }
 }

 rtstate = ppsc->rfpwr_state;

 switch (state_toset) {
 case 129:
  ppsc->rfoff_reason &= (~changesource);

  if ((changesource == RF_CHANGE_BY_HW) &&
      (ppsc->hwradiooff)) {
   ppsc->hwradiooff = 0;
  }

  if (!ppsc->rfoff_reason) {
   ppsc->rfoff_reason = 0;
   actionallowed = 1;
  }

  break;

 case 130:

  if ((changesource == RF_CHANGE_BY_HW) && !ppsc->hwradiooff) {
   ppsc->hwradiooff = 1;
  }

  ppsc->rfoff_reason |= changesource;
  actionallowed = 1;
  break;

 case 128:
  ppsc->rfoff_reason |= changesource;
  actionallowed = 1;
  break;

 default:
  pr_err("switch case %#x not processed\n", state_toset);
  break;
 }

 if (actionallowed)
  rtlpriv->cfg->ops->set_rf_power_state(hw, state_toset);

 spin_lock(&rtlpriv->locks.rf_ps_lock);
 ppsc->rfchange_inprogress = 0;
 spin_unlock(&rtlpriv->locks.rf_ps_lock);

 return actionallowed;
}
