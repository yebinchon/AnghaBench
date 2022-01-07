
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FINIT ;
 int INIT_IQK ;
 int MASKDWORD ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl92d_phy_pimode_switch(struct ieee80211_hw *hw, bool pi_mode)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 mode;

 RTPRINT(rtlpriv, FINIT, INIT_IQK,
  "BB Switch to %s mode!\n", pi_mode ? "PI" : "SI");
 mode = pi_mode ? 0x01000100 : 0x01000000;
 rtl_set_bbreg(hw, 0x820, MASKDWORD, mode);
 rtl_set_bbreg(hw, 0x828, MASKDWORD, mode);
}
