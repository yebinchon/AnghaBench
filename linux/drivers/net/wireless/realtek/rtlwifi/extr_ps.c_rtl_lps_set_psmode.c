
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ opp_ps; } ;
struct rtl_ps_ctl {scalar_t__ dot11_psmode; int smart_ps; int fwctrl_psmode; int pwr_mode; TYPE_1__ p2p_ps_info; scalar_t__ report_linked; scalar_t__ fwctrl_lps; } ;
struct TYPE_8__ {TYPE_2__* btc_ops; } ;
struct rtl_priv {TYPE_5__* cfg; TYPE_3__ btcoexist; } ;
struct rtl_mac {scalar_t__ opmode; scalar_t__ link_state; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_10__ {TYPE_4__* ops; } ;
struct TYPE_9__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,scalar_t__*) ;scalar_t__ (* get_btc_status ) () ;} ;
struct TYPE_7__ {int (* btc_lps_notify ) (struct rtl_priv*,scalar_t__) ;} ;


 int COMP_RF ;
 int DBG_DMESG ;
 scalar_t__ EACTIVE ;
 int FW_PS_ACTIVE_MODE ;
 int HW_VAR_FW_LPS_ACTION ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int P2P_PS_ENABLE ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int ) ;
 scalar_t__ rtl_get_fwlps_doze (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 int rtl_p2p_ps_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ,scalar_t__*) ;
 scalar_t__ stub2 () ;
 int stub3 (struct rtl_priv*,scalar_t__) ;
 scalar_t__ stub4 () ;
 int stub5 (struct rtl_priv*,scalar_t__) ;
 int stub6 (struct ieee80211_hw*,int ,scalar_t__*) ;

void rtl_lps_set_psmode(struct ieee80211_hw *hw, u8 rt_psmode)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool enter_fwlps;

 if (mac->opmode == NL80211_IFTYPE_ADHOC)
  return;

 if (mac->link_state != MAC80211_LINKED)
  return;

 if (ppsc->dot11_psmode == rt_psmode && rt_psmode == EACTIVE)
  return;


 ppsc->dot11_psmode = rt_psmode;
 if ((ppsc->fwctrl_lps) && ppsc->report_linked) {
  if (ppsc->dot11_psmode == EACTIVE) {
   RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
     "FW LPS leave ps_mode:%x\n",
      FW_PS_ACTIVE_MODE);
   enter_fwlps = 0;
   ppsc->pwr_mode = FW_PS_ACTIVE_MODE;
   ppsc->smart_ps = 0;
   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_FW_LPS_ACTION,
            (u8 *)(&enter_fwlps));
   if (ppsc->p2p_ps_info.opp_ps)
    rtl_p2p_ps_cmd(hw , P2P_PS_ENABLE);

   if (rtlpriv->cfg->ops->get_btc_status())
    rtlpriv->btcoexist.btc_ops->btc_lps_notify(rtlpriv, rt_psmode);
  } else {
   if (rtl_get_fwlps_doze(hw)) {
    RT_TRACE(rtlpriv, COMP_RF, DBG_DMESG,
      "FW LPS enter ps_mode:%x\n",
      ppsc->fwctrl_psmode);
    if (rtlpriv->cfg->ops->get_btc_status())
     rtlpriv->btcoexist.btc_ops->btc_lps_notify(rtlpriv, rt_psmode);
    enter_fwlps = 1;
    ppsc->pwr_mode = ppsc->fwctrl_psmode;
    ppsc->smart_ps = 2;
    rtlpriv->cfg->ops->set_hw_reg(hw,
       HW_VAR_FW_LPS_ACTION,
       (u8 *)(&enter_fwlps));

   } else {

    ppsc->dot11_psmode = EACTIVE;
   }
  }
 }
}
