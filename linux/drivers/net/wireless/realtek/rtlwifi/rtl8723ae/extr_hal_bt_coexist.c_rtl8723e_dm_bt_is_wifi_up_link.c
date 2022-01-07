
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_busy_traffic; } ;
struct rtl_priv {TYPE_1__ link_info; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8723e_dm_bt_is_wifi_up_link(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->link_info.tx_busy_traffic)
  return 1;
 return 0;
}
