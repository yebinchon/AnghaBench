
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dig_t {scalar_t__ presta_cstate; scalar_t__ cursta_cstate; int rssi_val_min; int cur_igvalue; scalar_t__ pre_igvalue; int back_val; int dig_ext_port_stage; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_DIG ;
 int DBG_TRACE ;
 int DIG_EXT_PORT_STAGE_MAX ;
 scalar_t__ DIG_STA_BEFORE_CONNECT ;
 scalar_t__ DIG_STA_CONNECT ;
 scalar_t__ DIG_STA_DISCONNECT ;
 int DM_DIG_BACKOFF_DEFAULT ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,scalar_t__) ;
 int rtl92c_dm_ctrl_initgain_by_rssi (struct ieee80211_hw*) ;
 int rtl92c_dm_initial_gain_min_pwdb (struct ieee80211_hw*) ;
 int rtl92c_dm_write_dig (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_initial_gain_sta(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;

 RT_TRACE(rtlpriv, COMP_DIG, DBG_TRACE,
   "presta_cstate = %x, cursta_cstate = %x\n",
   dm_digtable->presta_cstate, dm_digtable->cursta_cstate);
 if (dm_digtable->presta_cstate == dm_digtable->cursta_cstate ||
     dm_digtable->cursta_cstate == DIG_STA_BEFORE_CONNECT ||
     dm_digtable->cursta_cstate == DIG_STA_CONNECT) {
  if (dm_digtable->cursta_cstate != DIG_STA_DISCONNECT) {
   dm_digtable->rssi_val_min =
       rtl92c_dm_initial_gain_min_pwdb(hw);
   if (dm_digtable->rssi_val_min > 100)
    dm_digtable->rssi_val_min = 100;
   rtl92c_dm_ctrl_initgain_by_rssi(hw);
  }
 } else {
  dm_digtable->rssi_val_min = 0;
  dm_digtable->dig_ext_port_stage = DIG_EXT_PORT_STAGE_MAX;
  dm_digtable->back_val = DM_DIG_BACKOFF_DEFAULT;
  dm_digtable->cur_igvalue = 0x20;
  dm_digtable->pre_igvalue = 0;
  rtl92c_dm_write_dig(hw);
 }
}
