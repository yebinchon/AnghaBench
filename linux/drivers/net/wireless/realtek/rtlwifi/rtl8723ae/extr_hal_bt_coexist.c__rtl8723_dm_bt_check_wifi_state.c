
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int cstate; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct TYPE_4__ {scalar_t__ rx_busy_traffic; scalar_t__ tx_busy_traffic; scalar_t__ busytraffic; } ;
struct rtl_phy {scalar_t__ current_chan_bw; } ;
struct rtl_priv {TYPE_3__ btcoexist; TYPE_2__ mac80211; TYPE_1__ link_info; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 int BT_COEX_STATE_BT30 ;
 int BT_COEX_STATE_WIFI_DOWNLINK ;
 int BT_COEX_STATE_WIFI_HT20 ;
 int BT_COEX_STATE_WIFI_HT40 ;
 int BT_COEX_STATE_WIFI_IDLE ;
 int BT_COEX_STATE_WIFI_LEGACY ;
 int BT_COEX_STATE_WIFI_UPLINK ;
 scalar_t__ HT_CHANNEL_WIDTH_20_40 ;
 scalar_t__ WIRELESS_MODE_B ;
 scalar_t__ WIRELESS_MODE_G ;
 scalar_t__ bt_operation_on ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void _rtl8723_dm_bt_check_wifi_state(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);

 if (rtlpriv->link_info.busytraffic) {
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_IDLE;

  if (rtlpriv->link_info.tx_busy_traffic)
   rtlpriv->btcoexist.cstate |=
    BT_COEX_STATE_WIFI_UPLINK;
  else
   rtlpriv->btcoexist.cstate &=
    ~BT_COEX_STATE_WIFI_UPLINK;

  if (rtlpriv->link_info.rx_busy_traffic)
   rtlpriv->btcoexist.cstate |=
    BT_COEX_STATE_WIFI_DOWNLINK;
  else
   rtlpriv->btcoexist.cstate &=
    ~BT_COEX_STATE_WIFI_DOWNLINK;
 } else {
  rtlpriv->btcoexist.cstate |= BT_COEX_STATE_WIFI_IDLE;
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_UPLINK;
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_DOWNLINK;
 }

 if (rtlpriv->mac80211.mode == WIRELESS_MODE_G ||
     rtlpriv->mac80211.mode == WIRELESS_MODE_B) {
  rtlpriv->btcoexist.cstate |=
   BT_COEX_STATE_WIFI_LEGACY;
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_HT20;
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_HT40;
 } else {
  rtlpriv->btcoexist.cstate &=
   ~BT_COEX_STATE_WIFI_LEGACY;
  if (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40) {
   rtlpriv->btcoexist.cstate |=
    BT_COEX_STATE_WIFI_HT40;
   rtlpriv->btcoexist.cstate &=
    ~BT_COEX_STATE_WIFI_HT20;
  } else {
   rtlpriv->btcoexist.cstate |=
    BT_COEX_STATE_WIFI_HT20;
   rtlpriv->btcoexist.cstate &=
    ~BT_COEX_STATE_WIFI_HT40;
  }
 }

 if (bt_operation_on)
  rtlpriv->btcoexist.cstate |= BT_COEX_STATE_BT30;
 else
  rtlpriv->btcoexist.cstate &= ~BT_COEX_STATE_BT30;
}
