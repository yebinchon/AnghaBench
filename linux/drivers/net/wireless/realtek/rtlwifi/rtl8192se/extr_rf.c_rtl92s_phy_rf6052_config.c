
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


 int B3WIRE_ADDRESSLENGTH ;
 int B3WIRE_DATALENGTH ;
 int BRFSI_RFENV ;




 int pr_err (char*,size_t) ;
 int rtl92s_phy_config_rf (struct ieee80211_hw*,int) ;
 int rtl92s_phy_query_bb_reg (struct ieee80211_hw*,int ,int) ;
 int rtl92s_phy_set_bb_reg (struct ieee80211_hw*,int ,int,int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl92s_phy_rf6052_config(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 u32 u4reg_val = 0;
 u8 rfpath;
 bool rtstatus = 1;
 struct bb_reg_def *pphyreg;


 for (rfpath = 0; rfpath < rtlphy->num_total_rfpath; rfpath++) {

  pphyreg = &rtlphy->phyreg_def[rfpath];


  switch (rfpath) {
  case 131:
  case 129:
   u4reg_val = rtl92s_phy_query_bb_reg(hw,
           pphyreg->rfintfs,
           BRFSI_RFENV);
   break;
  case 130:
  case 128:
   u4reg_val = rtl92s_phy_query_bb_reg(hw,
           pphyreg->rfintfs,
           BRFSI_RFENV << 16);
   break;
  }


  rtl92s_phy_set_bb_reg(hw, pphyreg->rfintfe,
          BRFSI_RFENV << 16, 0x1);


  rtl92s_phy_set_bb_reg(hw, pphyreg->rfintfo, BRFSI_RFENV, 0x1);


  rtl92s_phy_set_bb_reg(hw, pphyreg->rfhssi_para2,
    B3WIRE_ADDRESSLENGTH, 0x0);
  rtl92s_phy_set_bb_reg(hw, pphyreg->rfhssi_para2,
    B3WIRE_DATALENGTH, 0x0);


  switch (rfpath) {
  case 131:
   rtstatus = rtl92s_phy_config_rf(hw,
      (enum radio_path)rfpath);
   break;
  case 130:
   rtstatus = rtl92s_phy_config_rf(hw,
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
   rtl92s_phy_set_bb_reg(hw, pphyreg->rfintfs, BRFSI_RFENV,
           u4reg_val);
   break;
  case 130:
  case 128:
   rtl92s_phy_set_bb_reg(hw, pphyreg->rfintfs,
           BRFSI_RFENV << 16,
           u4reg_val);
   break;
  }

  if (!rtstatus) {
   pr_err("Radio[%d] Fail!!\n", rfpath);
   goto fail;
  }

 }

 return rtstatus;

fail:
 return rtstatus;
}
