
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_phy {int current_chan_bw; int set_bwmode_inprogress; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {int cur_40_prime_sc; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BCCK_SIDEBAND ;
 int BIT (int) ;
 int BRFMOD ;
 int BW_OPMODE_20MHZ ;
 int COMP_SCAN ;
 int DBG_LOUD ;
 int DBG_TRACE ;
 int HAL_PRIME_CHNL_OFFSET_LOWER ;


 int RCCK0_SYSTEM ;
 scalar_t__ REG_BWOPMODE ;
 scalar_t__ REG_RRSR ;
 int RFPGA0_RFMOD ;
 int RFPGA1_RFMOD ;
 int ROFDM1_LSTF ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ is_hal_stop (struct rtl_hal*) ;
 int pr_err (char*,int) ;
 int rtl88e_phy_rf6052_set_bandwidth (struct ieee80211_hw*,int) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_set_bbreg (struct ieee80211_hw*,int,int,int) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

void rtl88e_phy_set_bw_mode_callback(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 u8 reg_bw_opmode;
 u8 reg_prsr_rsc;

 RT_TRACE(rtlpriv, COMP_SCAN, DBG_TRACE,
   "Switch to %s bandwidth\n",
    rtlphy->current_chan_bw == 129 ?
    "20MHz" : "40MHz");

 if (is_hal_stop(rtlhal)) {
  rtlphy->set_bwmode_inprogress = 0;
  return;
 }

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
  reg_prsr_rsc =
      (reg_prsr_rsc & 0x90) | (mac->cur_40_prime_sc << 5);
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

  break;
 case 128:
  rtl_set_bbreg(hw, RFPGA0_RFMOD, BRFMOD, 0x1);
  rtl_set_bbreg(hw, RFPGA1_RFMOD, BRFMOD, 0x1);

  rtl_set_bbreg(hw, RCCK0_SYSTEM, BCCK_SIDEBAND,
         (mac->cur_40_prime_sc >> 1));
  rtl_set_bbreg(hw, ROFDM1_LSTF, 0xC00, mac->cur_40_prime_sc);


  rtl_set_bbreg(hw, 0x818, (BIT(26) | BIT(27)),
         (mac->cur_40_prime_sc ==
          HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
  break;
 default:
  pr_err("unknown bandwidth: %#X\n",
         rtlphy->current_chan_bw);
  break;
 }
 rtl88e_phy_rf6052_set_bandwidth(hw, rtlphy->current_chan_bw);
 rtlphy->set_bwmode_inprogress = 0;
 RT_TRACE(rtlpriv, COMP_SCAN, DBG_LOUD, "\n");
}
