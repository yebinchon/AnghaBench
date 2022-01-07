
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FINIT ;
 int INIT_IQK ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*) ;
 int _rtl92d_phy_lc_calibrate_sw (struct ieee80211_hw*,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92d_phy_lc_calibrate(struct ieee80211_hw *hw, bool is2t)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 RTPRINT(rtlpriv, FINIT, INIT_IQK, "cosa PHY_LCK ver=2\n");
 _rtl92d_phy_lc_calibrate_sw(hw, is2t);
}
