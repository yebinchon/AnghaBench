
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int NL80211_IFTYPE_UNSPECIFIED ;
 int rtl92c_set_network_type (struct ieee80211_hw*,int ) ;

void rtl92c_init_network_type(struct ieee80211_hw *hw)
{
 rtl92c_set_network_type(hw, NL80211_IFTYPE_UNSPECIFIED);
}
