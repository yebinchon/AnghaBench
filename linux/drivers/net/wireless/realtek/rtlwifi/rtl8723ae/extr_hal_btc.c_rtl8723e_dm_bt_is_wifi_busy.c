
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tx_busy_traffic; scalar_t__ rx_busy_traffic; scalar_t__ busytraffic; } ;
struct rtl_priv {TYPE_1__ link_info; } ;
struct ieee80211_hw {int dummy; } ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static bool rtl8723e_dm_bt_is_wifi_busy(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 if (rtlpriv->link_info.busytraffic ||
  rtlpriv->link_info.rx_busy_traffic ||
  rtlpriv->link_info.tx_busy_traffic)
  return 1;
 else
  return 0;
}
