
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_phy {scalar_t__ apk_done; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_hal {int version; } ;
struct ieee80211_hw {int dummy; } ;
typedef int s8 ;


 scalar_t__ IS_92C_SERIAL (int ) ;
 int _rtl92c_phy_ap_calibrate (struct ieee80211_hw*,int ,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl92c_phy_ap_calibrate(struct ieee80211_hw *hw, s8 delta)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (rtlphy->apk_done)
  return;
 if (IS_92C_SERIAL(rtlhal->version))
  _rtl92c_phy_ap_calibrate(hw, delta, 1);
 else
  _rtl92c_phy_ap_calibrate(hw, delta, 0);
}
