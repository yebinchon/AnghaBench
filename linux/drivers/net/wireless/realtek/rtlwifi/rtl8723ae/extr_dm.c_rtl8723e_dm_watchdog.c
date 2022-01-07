
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ p2p_ps_mode; } ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; int rfchange_inprogress; TYPE_3__ p2p_ps_info; } ;
struct TYPE_10__ {scalar_t__ init_set; } ;
struct TYPE_9__ {int rf_ps_lock; } ;
struct rtl_priv {TYPE_5__ btcoexist; TYPE_4__ locks; TYPE_2__* cfg; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* get_hw_reg ) (struct ieee80211_hw*,int ,int *) ;} ;


 scalar_t__ ERFON ;
 int HW_VAR_FWLPS_RF_ON ;
 int HW_VAR_FW_PSMODE_STATUS ;
 int rtl8723e_dm_bt_coexist (struct ieee80211_hw*) ;
 int rtl8723e_dm_check_edca_turbo (struct ieee80211_hw*) ;
 int rtl8723e_dm_check_txpower_tracking (struct ieee80211_hw*) ;
 int rtl8723e_dm_dig (struct ieee80211_hw*) ;
 int rtl8723e_dm_dynamic_bb_powersaving (struct ieee80211_hw*) ;
 int rtl8723e_dm_dynamic_txpower (struct ieee80211_hw*) ;
 int rtl8723e_dm_false_alarm_counter_statistics (struct ieee80211_hw*) ;
 int rtl8723e_dm_pwdb_monitor (struct ieee80211_hw*) ;
 int rtl8723e_dm_refresh_rate_adaptive_mask (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_write_byte (struct rtl_priv*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ieee80211_hw*,int ,int *) ;
 int stub2 (struct ieee80211_hw*,int ,int *) ;

void rtl8723e_dm_watchdog(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 bool fw_current_inpsmode = 0;
 bool fw_ps_awake = 1;
 rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FW_PSMODE_STATUS,
          (u8 *)(&fw_current_inpsmode));
 rtlpriv->cfg->ops->get_hw_reg(hw, HW_VAR_FWLPS_RF_ON,
          (u8 *)(&fw_ps_awake));

 if (ppsc->p2p_ps_info.p2p_ps_mode)
  fw_ps_awake = 0;

 spin_lock(&rtlpriv->locks.rf_ps_lock);
 if ((ppsc->rfpwr_state == ERFON) &&
     ((!fw_current_inpsmode) && fw_ps_awake) &&
     (!ppsc->rfchange_inprogress)) {
  rtl8723e_dm_pwdb_monitor(hw);
  rtl8723e_dm_dig(hw);
  rtl8723e_dm_false_alarm_counter_statistics(hw);
  rtl8723e_dm_dynamic_bb_powersaving(hw);
  rtl8723e_dm_dynamic_txpower(hw);
  rtl8723e_dm_check_txpower_tracking(hw);
  rtl8723e_dm_refresh_rate_adaptive_mask(hw);
  rtl8723e_dm_bt_coexist(hw);
  rtl8723e_dm_check_edca_turbo(hw);
 }
 spin_unlock(&rtlpriv->locks.rf_ps_lock);
 if (rtlpriv->btcoexist.init_set)
  rtl_write_byte(rtlpriv, 0x76e, 0xc);
}
