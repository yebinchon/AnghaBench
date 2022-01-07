
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cnt_cck_fail; } ;
struct dig_t {scalar_t__ cur_sta_cstate; int rssi_val_min; int cur_cck_cca_thres; int pre_cck_cca_thres; } ;
struct rtl_priv {TYPE_1__ falsealm_cnt; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_DIG ;
 int DBG_TRACE ;
 scalar_t__ DIG_STA_CONNECT ;
 int MASKBYTE2 ;
 int RCCK0_CCA ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 int rtl88e_dm_initial_gain_min_pwdb (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int ,int) ;

__attribute__((used)) static void rtl88e_dm_cck_packet_detection_thresh(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_dig = &rtlpriv->dm_digtable;
 u8 cur_cck_cca_thresh;

 if (dm_dig->cur_sta_cstate == DIG_STA_CONNECT) {
  dm_dig->rssi_val_min = rtl88e_dm_initial_gain_min_pwdb(hw);
  if (dm_dig->rssi_val_min > 25) {
   cur_cck_cca_thresh = 0xcd;
  } else if ((dm_dig->rssi_val_min <= 25) &&
      (dm_dig->rssi_val_min > 10)) {
   cur_cck_cca_thresh = 0x83;
  } else {
   if (rtlpriv->falsealm_cnt.cnt_cck_fail > 1000)
    cur_cck_cca_thresh = 0x83;
   else
    cur_cck_cca_thresh = 0x40;
  }

 } else {
  if (rtlpriv->falsealm_cnt.cnt_cck_fail > 1000)
   cur_cck_cca_thresh = 0x83;
  else
   cur_cck_cca_thresh = 0x40;
 }

 if (dm_dig->cur_cck_cca_thres != cur_cck_cca_thresh)
  rtl_set_bbreg(hw, RCCK0_CCA, MASKBYTE2, cur_cck_cca_thresh);

 dm_dig->cur_cck_cca_thres = cur_cck_cca_thresh;
 dm_dig->pre_cck_cca_thres = dm_dig->cur_cck_cca_thres;
 RT_TRACE(rtlpriv, COMP_DIG, DBG_TRACE,
   "CCK cca thresh hold =%x\n", dm_dig->cur_cck_cca_thres);
}
