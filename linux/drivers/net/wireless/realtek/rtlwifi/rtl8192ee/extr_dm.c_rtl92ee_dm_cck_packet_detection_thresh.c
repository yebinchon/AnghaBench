
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int cnt_cck_fail; } ;
struct TYPE_4__ {scalar_t__ link_state; } ;
struct dig_t {int rssi_val_min; } ;
struct rtl_priv {TYPE_1__ falsealm_cnt; TYPE_2__ mac80211; struct dig_t dm_digtable; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ MAC80211_LINKED ;
 int rtl92ee_dm_write_cck_cca_thres (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92ee_dm_cck_packet_detection_thresh(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_dig = &rtlpriv->dm_digtable;
 u8 cur_cck_cca_thresh;

 if (rtlpriv->mac80211.link_state >= MAC80211_LINKED) {
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
 rtl92ee_dm_write_cck_cca_thres(hw, cur_cck_cca_thresh);
}
