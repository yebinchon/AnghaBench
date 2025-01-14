
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ current_bandtype; int load_imrandiqk_setting_for2g; } ;
struct rtl_priv {TYPE_1__ rtlhal; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum radio_path { ____Placeholder_radio_path } radio_path ;


 scalar_t__ BAND_ON_5G ;
 int BCCKEN ;
 int BIT (int) ;
 int BOFDMEN ;
 int COMP_CMD ;
 int COMP_SCAN ;
 int DBG_LOUD ;
 int MAX_RF_IMR_INDEX ;
 int MAX_RF_IMR_INDEX_NORMAL ;
 int RFPGA0_ANALOGPARAMETER4 ;
 int RFPGA0_RFMOD ;
 int RFREG_OFFSET_MASK ;
 int ROFDM1_CFOTRACKING ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int *** rf_imr_param_normal ;
 int * rf_reg_for_5g_swchnl_normal ;
 int rtl92d_acquire_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 int rtl92d_release_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int ,int,int) ;
 int rtl_set_rfreg (struct ieee80211_hw*,int,int ,int,int ) ;

__attribute__((used)) static void _rtl92d_phy_reload_imr_setting(struct ieee80211_hw *hw,
 u8 channel, u8 rfpath)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u32 imr_num = MAX_RF_IMR_INDEX;
 u32 rfmask = RFREG_OFFSET_MASK;
 u8 group, i;
 unsigned long flag = 0;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "====>path %d\n", rfpath);
 if (rtlpriv->rtlhal.current_bandtype == BAND_ON_5G) {
  RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "====>5G\n");
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BIT(25) | BIT(24), 0);
  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0xf);

  if (channel > 99)
   rtl_set_bbreg(hw, ROFDM1_CFOTRACKING, BIT(13) |
          BIT(14), 2);
  else
   rtl_set_bbreg(hw, ROFDM1_CFOTRACKING, BIT(13) |
          BIT(14), 1);

  group = channel <= 64 ? 1 : 2;
  imr_num = MAX_RF_IMR_INDEX_NORMAL;
  for (i = 0; i < imr_num; i++)
   rtl_set_rfreg(hw, (enum radio_path)rfpath,
          rf_reg_for_5g_swchnl_normal[i], rfmask,
          rf_imr_param_normal[0][group][i]);
  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4, 0x00f00000, 0);
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN, 1);
 } else {

  RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
    "Load RF IMR parameters for G band. IMR already setting %d\n",
    rtlpriv->rtlhal.load_imrandiqk_setting_for2g);
  RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "====>2.4G\n");
  if (!rtlpriv->rtlhal.load_imrandiqk_setting_for2g) {
   RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD,
     "Load RF IMR parameters for G band. %d\n",
     rfpath);
   rtl92d_acquire_cckandrw_pagea_ctl(hw, &flag);
   rtl_set_bbreg(hw, RFPGA0_RFMOD, BIT(25) | BIT(24), 0);
   rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4,
          0x00f00000, 0xf);
   imr_num = MAX_RF_IMR_INDEX_NORMAL;
   for (i = 0; i < imr_num; i++) {
    rtl_set_rfreg(hw, (enum radio_path)rfpath,
           rf_reg_for_5g_swchnl_normal[i],
           RFREG_OFFSET_MASK,
           rf_imr_param_normal[0][0][i]);
   }
   rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER4,
          0x00f00000, 0);
   rtl_set_bbreg(hw, RFPGA0_RFMOD, BOFDMEN | BCCKEN, 3);
   rtl92d_release_cckandrw_pagea_ctl(hw, &flag);
  }
 }
 RT_TRACE(rtlpriv, COMP_CMD, DBG_LOUD, "<====\n");
}
