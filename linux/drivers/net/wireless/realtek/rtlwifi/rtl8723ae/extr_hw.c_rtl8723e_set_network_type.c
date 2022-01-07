
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_state; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int EOPNOTSUPP ;
 scalar_t__ MAC80211_LINKED ;
 int NL80211_IFTYPE_AP ;
 scalar_t__ _rtl8723e_set_media_status (struct ieee80211_hw*,int) ;
 int rtl8723e_set_check_bssid (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

int rtl8723e_set_network_type(struct ieee80211_hw *hw,
         enum nl80211_iftype type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (_rtl8723e_set_media_status(hw, type))
  return -EOPNOTSUPP;

 if (rtlpriv->mac80211.link_state == MAC80211_LINKED) {
  if (type != NL80211_IFTYPE_AP)
   rtl8723e_set_check_bssid(hw, 1);
 } else {
  rtl8723e_set_check_bssid(hw, 0);
 }

 return 0;
}
