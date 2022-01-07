
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct rtl_ps_ctl {int smart_ps; int pwr_mode; int fw_current_inpsmode; } ;
struct rtl_p2p_ps_info {int p2p_ps_state; int noa_num; int * noa_start_time; int * noa_interval; int noa_index; int * noa_duration; int * noa_count_type; int opp_ps; int ctwindow; int p2p_ps_mode; } ;
struct TYPE_4__ {struct rtl_p2p_ps_info p2p_ps_info; } ;
struct rtl_priv {TYPE_3__* cfg; TYPE_1__ psc; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int COMP_FW ;
 int DBG_LOUD ;
 int HW_VAR_H2C_FW_P2P_PS_OFFLOAD ;
 int HW_VAR_H2C_FW_PWRMODE ;



 int P2P_PS_NONE ;


 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;
 int stub2 (struct ieee80211_hw*,int ,int*) ;
 int stub3 (struct ieee80211_hw*,int ,int*) ;
 int stub4 (struct ieee80211_hw*,int ,int*) ;
 int stub5 (struct ieee80211_hw*,int ,int*) ;

void rtl_p2p_ps_cmd(struct ieee80211_hw *hw , u8 p2p_ps_state)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *rtlps = rtl_psc(rtl_priv(hw));
 struct rtl_p2p_ps_info *p2pinfo = &(rtlpriv->psc.p2p_ps_info);

 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, " p2p state %x\n" , p2p_ps_state);
 switch (p2p_ps_state) {
 case 131:
  p2pinfo->p2p_ps_state = p2p_ps_state;
  rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_H2C_FW_P2P_PS_OFFLOAD,
           &p2p_ps_state);
  p2pinfo->noa_index = 0;
  p2pinfo->ctwindow = 0;
  p2pinfo->opp_ps = 0;
  p2pinfo->noa_num = 0;
  p2pinfo->p2p_ps_mode = P2P_PS_NONE;
  if (rtlps->fw_current_inpsmode) {
   if (rtlps->smart_ps == 0) {
    rtlps->smart_ps = 2;
    rtlpriv->cfg->ops->set_hw_reg(hw,
      HW_VAR_H2C_FW_PWRMODE,
      &rtlps->pwr_mode);
   }

  }
  break;
 case 130:
  if (p2pinfo->p2p_ps_mode > P2P_PS_NONE) {
   p2pinfo->p2p_ps_state = p2p_ps_state;

   if (p2pinfo->ctwindow > 0) {
    if (rtlps->smart_ps != 0) {
     rtlps->smart_ps = 0;
     rtlpriv->cfg->ops->set_hw_reg(hw,
       HW_VAR_H2C_FW_PWRMODE,
       &rtlps->pwr_mode);
    }
   }
   rtlpriv->cfg->ops->set_hw_reg(hw,
     HW_VAR_H2C_FW_P2P_PS_OFFLOAD,
     &p2p_ps_state);

  }
  break;
 case 129:
 case 128:
 case 132:
  if (p2pinfo->p2p_ps_mode > P2P_PS_NONE) {
   p2pinfo->p2p_ps_state = p2p_ps_state;
   rtlpriv->cfg->ops->set_hw_reg(hw,
     HW_VAR_H2C_FW_P2P_PS_OFFLOAD,
     &p2p_ps_state);
  }
  break;
 default:
  break;
 }
 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD,
   "ctwindow %x oppps %x\n",
   p2pinfo->ctwindow , p2pinfo->opp_ps);
 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD,
   "count %x duration %x index %x interval %x start time %x noa num %x\n",
   p2pinfo->noa_count_type[0],
   p2pinfo->noa_duration[0],
   p2pinfo->noa_index,
   p2pinfo->noa_interval[0],
   p2pinfo->noa_start_time[0],
   p2pinfo->noa_num);
 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "end\n");
}
