
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ useramask; } ;
struct rtl_priv {TYPE_1__ dm; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int rtl88ee_update_hal_rate_mask (struct ieee80211_hw*,struct ieee80211_sta*,int ,int) ;
 int rtl88ee_update_hal_rate_table (struct ieee80211_hw*,struct ieee80211_sta*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl88ee_update_hal_rate_tbl(struct ieee80211_hw *hw,
  struct ieee80211_sta *sta, u8 rssi_level, bool update_bw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 if (rtlpriv->dm.useramask)
  rtl88ee_update_hal_rate_mask(hw, sta, rssi_level, update_bw);
 else
  rtl88ee_update_hal_rate_table(hw, sta);
}
