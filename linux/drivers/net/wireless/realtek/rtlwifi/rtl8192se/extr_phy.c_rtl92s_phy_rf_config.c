
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_phy {scalar_t__ rf_type; int num_total_rfpath; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ RF_1T1R ;
 int rtl92s_phy_rf6052_config (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl92s_phy_rf_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);


 if (rtlphy->rf_type == RF_1T1R)
  rtlphy->num_total_rfpath = 1;
 else
  rtlphy->num_total_rfpath = 2;


 return rtl92s_phy_rf6052_config(hw);
}
