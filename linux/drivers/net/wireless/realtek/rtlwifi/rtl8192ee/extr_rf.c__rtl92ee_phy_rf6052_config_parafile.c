
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtl_phy {size_t num_total_rfpath; struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int rfintfs; int rfhssi_para2; int rfintfo; int rfintfe; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int B3WIREADDREAALENGTH ;
 int B3WIREDATALENGTH ;
 int BRFSI_RFENV ;
 int COMP_INIT ;
 int DBG_TRACE ;




 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int rtl92ee_phy_config_rf_with_headerfile (struct ieee80211_hw*,int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static bool _rtl92ee_phy_rf6052_config_parafile(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u32 u4_regvalue = 0;
 u8 rfpath;
 bool rtstatus = 1;
 struct bb_reg_def *pphyreg;

 for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {
  pphyreg = &rtlphy->phyreg_def[rfpath];

  switch (rfpath) {
  case 131:
  case 129:
   u4_regvalue = rtl_get_bbreg(hw, pphyreg->rfintfs,
          BRFSI_RFENV);
   break;
  case 130:
  case 128:
   u4_regvalue = rtl_get_bbreg(hw, pphyreg->rfintfs,
          BRFSI_RFENV << 16);
   break;
  }

  rtl_set_bbreg(hw, pphyreg->rfintfe, BRFSI_RFENV << 16, 0x1);
  udelay(1);

  rtl_set_bbreg(hw, pphyreg->rfintfo, BRFSI_RFENV, 0x1);
  udelay(1);

  rtl_set_bbreg(hw, pphyreg->rfhssi_para2,
         B3WIREADDREAALENGTH, 0x0);
  udelay(1);

  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, B3WIREDATALENGTH, 0x0);
  udelay(1);

  switch (rfpath) {
  case 131:
   rtstatus = rtl92ee_phy_config_rf_with_headerfile(hw,
             (enum radio_path)rfpath);
   break;
  case 130:
   rtstatus = rtl92ee_phy_config_rf_with_headerfile(hw,
             (enum radio_path)rfpath);
   break;
  case 129:
   break;
  case 128:
   break;
  }

  switch (rfpath) {
  case 131:
  case 129:
   rtl_set_bbreg(hw, pphyreg->rfintfs,
          BRFSI_RFENV, u4_regvalue);
   break;
  case 130:
  case 128:
   rtl_set_bbreg(hw, pphyreg->rfintfs,
          BRFSI_RFENV << 16, u4_regvalue);
   break;
  }

  if (!rtstatus) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "Radio[%d] Fail!!\n", rfpath);
   return 0;
  }
 }

 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "\n");
 return rtstatus;
}
