
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtl_phy {struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int rfhssi_para2; int rfintfo; int rfintfe; int rfintfs; } ;


 int B3WIREADDRESSLENGTH ;
 int B3WIREDATALENGTH ;
 int BRFSI_RFENV ;
 int COMP_RF ;
 int DBG_LOUD ;




 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void _rtl92d_phy_enable_rf_env(struct ieee80211_hw *hw,
 u8 rfpath, u32 *pu4_regval)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct bb_reg_def *pphyreg = &rtlphy->phyreg_def[rfpath];

 RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD, "====>\n");

 switch (rfpath) {
 case 131:
 case 129:
  *pu4_regval = rtl_get_bbreg(hw, pphyreg->rfintfs, BRFSI_RFENV);
  break;
 case 130:
 case 128:
  *pu4_regval =
      rtl_get_bbreg(hw, pphyreg->rfintfs, BRFSI_RFENV << 16);
  break;
 }

 rtl_set_bbreg(hw, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
 udelay(1);

 rtl_set_bbreg(hw, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
 udelay(1);


 rtl_set_bbreg(hw, pphyreg->rfhssi_para2, B3WIREADDRESSLENGTH, 0x0);
 udelay(1);

 rtl_set_bbreg(hw, pphyreg->rfhssi_para2, B3WIREDATALENGTH, 0x0);
 udelay(1);
 RT_TRACE(rtlpriv, COMP_RF, DBG_LOUD, "<====\n");
}
