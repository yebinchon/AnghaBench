
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_phy {scalar_t__ num_total_rfpath; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RF90_PATH_A ;
 int rtl8821ae_phy_set_txpower_level_by_path (struct ieee80211_hw*,scalar_t__,scalar_t__) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8821ae_phy_set_txpower_level(struct ieee80211_hw *hw, u8 channel)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 path = 0;

 for (path = RF90_PATH_A; path < rtlphy->num_total_rfpath; ++path)
  rtl8821ae_phy_set_txpower_level_by_path(hw, channel, path);
}
