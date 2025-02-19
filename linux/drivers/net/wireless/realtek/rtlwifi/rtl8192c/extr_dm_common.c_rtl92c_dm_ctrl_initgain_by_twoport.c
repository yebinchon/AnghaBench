
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dig_t {int cursta_cstate; int presta_cstate; int curmultista_cstate; } ;
struct rtl_priv {struct dig_t dm_digtable; } ;
struct rtl_mac {scalar_t__ link_state; scalar_t__ act_scanning; } ;
struct ieee80211_hw {int dummy; } ;


 int DIG_MULTISTA_DISCONNECT ;
 int DIG_STA_CONNECT ;
 int DIG_STA_DISCONNECT ;
 scalar_t__ MAC80211_LINKED ;
 int rtl92c_dm_cck_packet_detection_thresh (struct ieee80211_hw*) ;
 int rtl92c_dm_initial_gain_multi_sta (struct ieee80211_hw*) ;
 int rtl92c_dm_initial_gain_sta (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl92c_dm_ctrl_initgain_by_twoport(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct dig_t *dm_digtable = &rtlpriv->dm_digtable;
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));

 if (mac->act_scanning)
  return;

 if (mac->link_state >= MAC80211_LINKED)
  dm_digtable->cursta_cstate = DIG_STA_CONNECT;
 else
  dm_digtable->cursta_cstate = DIG_STA_DISCONNECT;

 dm_digtable->curmultista_cstate = DIG_MULTISTA_DISCONNECT;

 rtl92c_dm_initial_gain_sta(hw);
 rtl92c_dm_initial_gain_multi_sta(hw);
 rtl92c_dm_cck_packet_detection_thresh(hw);

 dm_digtable->presta_cstate = dm_digtable->cursta_cstate;
}
