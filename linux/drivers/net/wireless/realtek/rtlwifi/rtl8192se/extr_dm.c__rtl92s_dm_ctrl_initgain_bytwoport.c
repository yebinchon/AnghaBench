
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int undec_sm_pwdb; } ;
struct TYPE_3__ {scalar_t__ link_state; scalar_t__ opmode; scalar_t__ act_scanning; } ;
struct dig_t {scalar_t__ cur_sta_cstate; scalar_t__ dig_twoport_algorithm; scalar_t__ pre_sta_cstate; int rssi_val; } ;
struct rtl_priv {TYPE_2__ dm; TYPE_1__ mac80211; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ DIG_STA_CONNECT ;
 scalar_t__ DIG_STA_DISCONNECT ;
 scalar_t__ DIG_TWO_PORT_ALGO_FALSE_ALARM ;
 scalar_t__ DIG_TWO_PORT_ALGO_RSSI ;
 int FW_CMD_DIG_MODE_SS ;
 scalar_t__ MAC80211_LINKED ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int _rtl92s_dm_false_alarm_counter_statistics (struct ieee80211_hw*) ;
 int _rtl92s_dm_initial_gain_sta_beforeconnect (struct ieee80211_hw*) ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92s_dm_ctrl_initgain_bytwoport(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dig = &rtlpriv->dm_digtable;

 if (rtlpriv->mac80211.act_scanning)
  return;


 if (rtlpriv->mac80211.link_state >= MAC80211_LINKED ||
     rtlpriv->mac80211.opmode == NL80211_IFTYPE_ADHOC)
  dig->cur_sta_cstate = DIG_STA_CONNECT;
 else
  dig->cur_sta_cstate = DIG_STA_DISCONNECT;

 dig->rssi_val = rtlpriv->dm.undec_sm_pwdb;


 if (dig->cur_sta_cstate != DIG_STA_DISCONNECT) {
  if (dig->dig_twoport_algorithm ==
      DIG_TWO_PORT_ALGO_FALSE_ALARM) {
   dig->dig_twoport_algorithm = DIG_TWO_PORT_ALGO_RSSI;
   rtl92s_phy_set_fw_cmd(hw, FW_CMD_DIG_MODE_SS);
  }
 }

 _rtl92s_dm_false_alarm_counter_statistics(hw);
 _rtl92s_dm_initial_gain_sta_beforeconnect(hw);

 dig->pre_sta_cstate = dig->cur_sta_cstate;
}
