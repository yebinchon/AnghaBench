
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rtl_hal {scalar_t__ macphymode; scalar_t__ current_bandtype; int interfaceindex; int during_mac1init_radioa; int during_mac0init_radiob; } ;
struct rtl_phy {scalar_t__ rf_type; int num_total_rfpath; struct bb_reg_def* phyreg_def; } ;
struct rtl_priv {struct rtl_hal rtlhal; struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
struct bb_reg_def {int rfintfs; int rfhssi_para2; int rfintfo; int rfintfe; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 int B3WIREADDRESSLENGTH ;
 int B3WIREDATALENGTH ;
 scalar_t__ BAND_ON_2_4G ;
 scalar_t__ BAND_ON_5G ;
 int BRFSI_RFENV ;
 int COMP_INIT ;
 int DBG_TRACE ;
 scalar_t__ DUALMAC_DUALPHY ;




 scalar_t__ RF_1T1R ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int radioa_txt ;
 int radiob_txt ;
 int rtl92d_phy_config_rf_with_headerfile (struct ieee80211_hw*,int ,int) ;
 scalar_t__ rtl92d_phy_enable_anotherphy (struct ieee80211_hw*,int) ;
 int rtl92d_phy_powerdown_anotherphy (struct ieee80211_hw*,int) ;
 int rtl_get_bbreg (struct ieee80211_hw*,int ,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int udelay (int) ;

bool rtl92d_phy_rf6052_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 bool rtstatus = 1;
 struct rtl_hal *rtlhal = &(rtlpriv->rtlhal);
 u32 u4_regvalue = 0;
 u8 rfpath;
 struct bb_reg_def *pphyreg;
 bool mac1_initradioa_first = 0, mac0_initradiob_first = 0;
 bool need_pwrdown_radioa = 0, need_pwrdown_radiob = 0;
 bool true_bpath = 0;

 if (rtlphy->rf_type == RF_1T1R)
  rtlphy->num_total_rfpath = 1;
 else
  rtlphy->num_total_rfpath = 2;






 if (rtlhal->macphymode == DUALMAC_DUALPHY) {
  if (rtlhal->current_bandtype == BAND_ON_2_4G &&
      rtlhal->interfaceindex == 0) {


   if (rtl92d_phy_enable_anotherphy(hw, 1)) {
    rtlphy->num_total_rfpath = 2;
    mac0_initradiob_first = 1;
   } else {


    return rtstatus;
   }
  } else if (rtlhal->current_bandtype == BAND_ON_5G &&
      rtlhal->interfaceindex == 1) {


   if (rtl92d_phy_enable_anotherphy(hw, 0)) {
    rtlphy->num_total_rfpath = 2;
    mac1_initradioa_first = 1;
   } else {


    return rtstatus;
   }
  } else if (rtlhal->interfaceindex == 1) {

   true_bpath = 1;
  }
 }

 for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {

  if (mac1_initradioa_first) {
   if (rfpath == 131) {
    rtlhal->during_mac1init_radioa = 1;
    need_pwrdown_radioa = 1;
   } else if (rfpath == 130) {
    rtlhal->during_mac1init_radioa = 0;
    mac1_initradioa_first = 0;
    rfpath = 131;
    true_bpath = 1;
    rtlphy->num_total_rfpath = 1;
   }
  } else if (mac0_initradiob_first) {

   if (rfpath == 131)
    rtlhal->during_mac0init_radiob = 0;
   if (rfpath == 130) {
    rtlhal->during_mac0init_radiob = 1;
    mac0_initradiob_first = 0;
    need_pwrdown_radiob = 1;
    rfpath = 131;
    true_bpath = 1;
    rtlphy->num_total_rfpath = 1;
   }
  }
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
         B3WIREADDRESSLENGTH, 0x0);
  udelay(1);

  rtl_set_bbreg(hw, pphyreg->rfhssi_para2, B3WIREDATALENGTH, 0x0);
  udelay(1);
  switch (rfpath) {
  case 131:
   if (true_bpath)
    rtstatus = rtl92d_phy_config_rf_with_headerfile(
      hw, radiob_txt,
      (enum radio_path)rfpath);
   else
    rtstatus = rtl92d_phy_config_rf_with_headerfile(
          hw, radioa_txt,
          (enum radio_path)rfpath);
   break;
  case 130:
   rtstatus =
       rtl92d_phy_config_rf_with_headerfile(hw, radiob_txt,
      (enum radio_path) rfpath);
   break;
  case 129:
   break;
  case 128:
   break;
  }
  switch (rfpath) {
  case 131:
  case 129:
   rtl_set_bbreg(hw, pphyreg->rfintfs, BRFSI_RFENV,
          u4_regvalue);
   break;
  case 130:
  case 128:
   rtl_set_bbreg(hw, pphyreg->rfintfs, BRFSI_RFENV << 16,
          u4_regvalue);
   break;
  }
  if (!rtstatus) {
   RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE,
     "Radio[%d] Fail!!\n", rfpath);
   goto phy_rf_cfg_fail;
  }

 }





 if (need_pwrdown_radioa)
  rtl92d_phy_powerdown_anotherphy(hw, 0);
 else if (need_pwrdown_radiob)
  rtl92d_phy_powerdown_anotherphy(hw, 1);
 RT_TRACE(rtlpriv, COMP_INIT, DBG_TRACE, "<---\n");
 return rtstatus;

phy_rf_cfg_fail:
 return rtstatus;
}
