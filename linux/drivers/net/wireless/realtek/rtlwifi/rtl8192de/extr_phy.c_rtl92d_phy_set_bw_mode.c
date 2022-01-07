
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int set_bwmode_inprogress; int current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {int cur_40_prime_sc; } ;
struct rtl_hal {int current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;


 int BAND_ON_2_4G ;
 int BCCKSIDEBAND ;
 int BIT (int) ;
 int BRFMOD ;
 int BW_OPMODE_20MHZ ;
 int COMP_ERR ;
 int COMP_SCAN ;
 int DBG_TRACE ;
 int DBG_WARNING ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;


 int RCCK0_SYSTEM ;
 scalar_t__ REG_BWOPMODE ;
 scalar_t__ REG_RRSR ;
 int RFPGA0_ANALOGPARAMETER2 ;
 int RFPGA0_RFMOD ;
 int RFPGA1_RFMOD ;
 int ROFDM1_LSTF ;
 scalar_t__ RT_CANNOT_IO (struct ieee80211_hw*) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int pr_err (char*,int) ;
 int rtl92d_acquire_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 int rtl92d_phy_rf6052_set_bandwidth (struct ieee80211_hw*,int) ;
 int rtl92d_release_cckandrw_pagea_ctl (struct ieee80211_hw*,unsigned long*) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

void rtl92d_phy_set_bw_mode(struct ieee80211_hw *hw,
       enum nl80211_channel_type ch_type)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 unsigned long flag = 0;
 u8 reg_prsr_rsc;
 u8 reg_bw_opmode;

 if (rtlphy->set_bwmode_inprogress)
  return;
 if ((is_hal_stop(rtlhal)) || (RT_CANNOT_IO(hw))) {
  RT_TRACE(rtlpriv, COMP_ERR, DBG_WARNING,
    "FALSE driver sleep or unload\n");
  return;
 }
 rtlphy->set_bwmode_inprogress = 1;
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE, "Switch to %s bandwidth\n",
   rtlphy->current_chan_bw == 129 ?
   "20MHz" : "40MHz");
 reg_bw_opmode = rtl_read_byte(rtlpriv, REG_BWOPMODE);
 reg_prsr_rsc = rtl_read_byte(rtlpriv, REG_RRSR + 2);
 switch (rtlphy->current_chan_bw) {
 case 129:
  reg_bw_opmode |= BW_OPMODE_20MHZ;
  rtl_write_byte(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
  break;
 case 128:
  reg_bw_opmode &= ~BW_OPMODE_20MHZ;
  rtl_write_byte(rtlpriv, REG_BWOPMODE, reg_bw_opmode);

  reg_prsr_rsc = (reg_prsr_rsc & 0x90) |
   (mac->cur_40_prime_sc << 5);
  rtl_write_byte(rtlpriv, REG_RRSR + 2, reg_prsr_rsc);
  break;
 default:
  pr_err("unknown bandwidth: %#X\n",
         rtlphy->current_chan_bw);
  break;
 }
 switch (rtlphy->current_chan_bw) {
 case 129:
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BRFMOD, 0x0);
  rtl_set_bbreg(hw, RFPGA1_RFMOD, BRFMOD, 0x0);

  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER2, BIT(10) |
         BIT(11), 3);
  break;
 case 128:
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BRFMOD, 0x1);
  rtl_set_bbreg(hw, RFPGA1_RFMOD, BRFMOD, 0x1);


  if (rtlhal->current_bandtype == BAND_ON_2_4G) {
   rtl92d_acquire_cckandrw_pagea_ctl(hw, &flag);
   rtl_set_bbreg(hw, RCCK0_SYSTEM, BCCKSIDEBAND,
    (mac->cur_40_prime_sc >> 1));
   rtl92d_release_cckandrw_pagea_ctl(hw, &flag);
  }
  rtl_set_bbreg(hw, ROFDM1_LSTF, 0xC00, mac->cur_40_prime_sc);

  rtl_set_bbreg(hw, RFPGA0_ANALOGPARAMETER2, BIT(10) |
         BIT(11), 0);
  rtl_set_bbreg(hw, 0x818, (BIT(26) | BIT(27)),
   (mac->cur_40_prime_sc ==
   HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
  break;
 default:
  pr_err("unknown bandwidth: %#X\n",
         rtlphy->current_chan_bw);
  break;

 }
 rtl92d_phy_rf6052_set_bandwidth(hw, rtlphy->current_chan_bw);
 rtlphy->set_bwmode_inprogress = 0;
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE, "<==\n");
}
