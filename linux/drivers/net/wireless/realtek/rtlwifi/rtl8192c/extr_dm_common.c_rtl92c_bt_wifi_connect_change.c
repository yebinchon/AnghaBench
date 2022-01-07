
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_state; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ MAC80211_LINKED ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool rtl92c_bt_wifi_connect_change(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 static bool media_connect;

 if (rtlpriv->mac80211.link_state < MAC80211_LINKED) {
  media_connect = 0;
 } else {
  if (!media_connect) {
   media_connect = 1;
   return 1;
  }
  media_connect = 1;
 }

 return 0;
}
