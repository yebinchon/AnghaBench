
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int FINIT ;
 int INIT_IQK ;
 int MASKDWORD ;
 int RFPGA0_XA_LSSIPARAMETER ;
 int RTPRINT (struct rtl_priv*,int ,int ,char*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int ,int) ;

__attribute__((used)) static void _rtl92d_phy_patha_standby(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 RTPRINT(rtlpriv, FINIT, INIT_IQK, "Path-A standby mode!\n");

 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x0);
 rtl_set_bbreg(hw, RFPGA0_XA_LSSIPARAMETER, MASKDWORD, 0x00010000);
 rtl_set_bbreg(hw, 0xe28, MASKDWORD, 0x80800000);
}
