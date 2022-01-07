
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct rtl_priv {int regd; } ;
struct regulatory_request {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_REGD ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int _rtl_reg_notifier_apply (struct wiphy*,struct regulatory_request*,int *) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

void rtl_reg_notifier(struct wiphy *wiphy, struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RT_TRACE(rtlpriv, COMP_REGD, DBG_LOUD, "\n");

 _rtl_reg_notifier_apply(wiphy, request, &rtlpriv->regd);
}
