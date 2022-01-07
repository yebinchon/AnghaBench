
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int* default_initialgain; } ;
struct TYPE_3__ {scalar_t__ rfpwr_state; } ;
struct false_alarm_statistics {int cnt_all; } ;
struct dig_t {scalar_t__ pre_sta_cstate; scalar_t__ cur_sta_cstate; scalar_t__ back_val; scalar_t__ rssi_val; scalar_t__ rx_gain_max; scalar_t__ cur_igvalue; scalar_t__ rx_gain_min; int pre_igvalue; int dig_ext_port_stage; scalar_t__ backoff_enable_flag; } ;
struct rtl_priv {TYPE_2__ phy; TYPE_1__ psc; struct false_alarm_statistics falsealm_cnt; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int DIG_EXT_PORT_STAGE_MAX ;
 scalar_t__ DIG_STA_BEFORE_CONNECT ;
 void* DM_DIG_BACKOFF_MAX ;
 scalar_t__ ERFON ;
 int FW_CMD_DIG_DISABLE ;
 int FW_CMD_DIG_ENABLE ;
 int MASKBYTE0 ;
 int ROFDM0_XAAGCCORE1 ;
 int ROFDM0_XBAGCCORE1 ;
 int rtl92s_backoff_enable_flag (struct ieee80211_hw*) ;
 int rtl92s_phy_set_fw_cmd (struct ieee80211_hw*,int ) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void _rtl92s_dm_initial_gain_sta_beforeconnect(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *digtable = &rtlpriv->dm_digtable;
 struct false_alarm_statistics *falsealm_cnt = &(rtlpriv->falsealm_cnt);
 static u8 initialized, force_write;
 u8 initial_gain = 0;

 if ((digtable->pre_sta_cstate == digtable->cur_sta_cstate) ||
     (digtable->cur_sta_cstate == DIG_STA_BEFORE_CONNECT)) {
  if (digtable->cur_sta_cstate == DIG_STA_BEFORE_CONNECT) {
   if (rtlpriv->psc.rfpwr_state != ERFON)
    return;

   if (digtable->backoff_enable_flag)
    rtl92s_backoff_enable_flag(hw);
   else
    digtable->back_val = DM_DIG_BACKOFF_MAX;

   if ((digtable->rssi_val + 10 - digtable->back_val) >
    digtable->rx_gain_max)
    digtable->cur_igvalue =
      digtable->rx_gain_max;
   else if ((digtable->rssi_val + 10 - digtable->back_val)
     < digtable->rx_gain_min)
    digtable->cur_igvalue =
      digtable->rx_gain_min;
   else
    digtable->cur_igvalue = digtable->rssi_val + 10
     - digtable->back_val;

   if (falsealm_cnt->cnt_all > 10000)
    digtable->cur_igvalue =
      (digtable->cur_igvalue > 0x33) ?
      digtable->cur_igvalue : 0x33;

   if (falsealm_cnt->cnt_all > 16000)
    digtable->cur_igvalue =
       digtable->rx_gain_max;

  } else {

   return;
  }


 } else {

  digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_MAX;
  rtl92s_phy_set_fw_cmd(hw, FW_CMD_DIG_ENABLE);

  digtable->back_val = DM_DIG_BACKOFF_MAX;
  digtable->cur_igvalue = rtlpriv->phy.default_initialgain[0];
  digtable->pre_igvalue = 0;
  return;
 }


 if (digtable->pre_igvalue != rtl_get_bbreg(hw, ROFDM0_XAAGCCORE1,
        MASKBYTE0))
  force_write = 1;

 if ((digtable->pre_igvalue != digtable->cur_igvalue) ||
     !initialized || force_write) {

  rtl92s_phy_set_fw_cmd(hw, FW_CMD_DIG_DISABLE);

  initial_gain = (u8)digtable->cur_igvalue;


  rtl_set_bbreg(hw, ROFDM0_XAAGCCORE1, MASKBYTE0, initial_gain);
  rtl_set_bbreg(hw, ROFDM0_XBAGCCORE1, MASKBYTE0, initial_gain);
  digtable->pre_igvalue = digtable->cur_igvalue;
  initialized = 1;
  force_write = 0;
 }
}
