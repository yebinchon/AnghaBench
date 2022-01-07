
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_LOUD ;
 scalar_t__ RA_RFE_PINMUX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,scalar_t__,int,int) ;

__attribute__((used)) static void _rtl8821ae_phy_set_rfpath_switch(struct ieee80211_hw *hw, bool main)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);


 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "\n");

 if (main)
  rtl_set_bbreg(hw, RA_RFE_PINMUX + 4, BIT(29) | BIT(28), 0x1);
 else
  rtl_set_bbreg(hw, RA_RFE_PINMUX + 4, BIT(29) | BIT(28), 0x2);
}
