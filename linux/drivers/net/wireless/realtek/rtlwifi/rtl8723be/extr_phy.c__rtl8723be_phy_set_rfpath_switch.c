
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int MASKDWORD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl8723be_phy_set_rfpath_switch(struct ieee80211_hw *hw,
          bool bmain, bool is2t)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "\n");

 if (bmain)
  rtl_set_bbreg(hw, 0x92C, MASKDWORD, 0x1);
 else
  rtl_set_bbreg(hw, 0x92C, MASKDWORD, 0x2);
}
