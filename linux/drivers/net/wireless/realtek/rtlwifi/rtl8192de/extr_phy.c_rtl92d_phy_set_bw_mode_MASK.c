#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct rtl_phy {int set_bwmode_inprogress; int current_chan_bw; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {int cur_40_prime_sc; } ;
struct rtl_hal {int /*<<< orphan*/  current_bandtype; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;

/* Variables and functions */
 int /*<<< orphan*/  BAND_ON_2_4G ; 
 int BCCKSIDEBAND ; 
 int FUNC0 (int) ; 
 int BRFMOD ; 
 int BW_OPMODE_20MHZ ; 
 int /*<<< orphan*/  COMP_ERR ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_TRACE ; 
 int /*<<< orphan*/  DBG_WARNING ; 
 int HAL_PRIME_CHNL_OFFSET_LOWER ; 
#define  HT_CHANNEL_WIDTH_20 129 
#define  HT_CHANNEL_WIDTH_20_40 128 
 int RCCK0_SYSTEM ; 
 scalar_t__ REG_BWOPMODE ; 
 scalar_t__ REG_RRSR ; 
 int RFPGA0_ANALOGPARAMETER2 ; 
 int RFPGA0_RFMOD ; 
 int RFPGA1_RFMOD ; 
 int ROFDM1_LSTF ; 
 scalar_t__ FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,unsigned long*) ; 
 struct rtl_hal* FUNC8 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC9 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 
 int FUNC11 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC14(struct ieee80211_hw *hw,
			    enum nl80211_channel_type ch_type)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	struct rtl_hal *rtlhal = FUNC8(FUNC10(hw));
	struct rtl_mac *mac = FUNC9(FUNC10(hw));
	unsigned long flag = 0;
	u8 reg_prsr_rsc;
	u8 reg_bw_opmode;

	if (rtlphy->set_bwmode_inprogress)
		return;
	if ((FUNC3(rtlhal)) || (FUNC1(hw))) {
		FUNC2(rtlpriv, COMP_ERR, DBG_WARNING,
			 "FALSE driver sleep or unload\n");
		return;
	}
	rtlphy->set_bwmode_inprogress = true;
	FUNC2(rtlpriv, COMP_SCAN, DBG_TRACE, "Switch to %s bandwidth\n",
		 rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20 ?
		 "20MHz" : "40MHz");
	reg_bw_opmode = FUNC11(rtlpriv, REG_BWOPMODE);
	reg_prsr_rsc = FUNC11(rtlpriv, REG_RRSR + 2);
	switch (rtlphy->current_chan_bw) {
	case HT_CHANNEL_WIDTH_20:
		reg_bw_opmode |= BW_OPMODE_20MHZ;
		FUNC13(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		reg_bw_opmode &= ~BW_OPMODE_20MHZ;
		FUNC13(rtlpriv, REG_BWOPMODE, reg_bw_opmode);

		reg_prsr_rsc = (reg_prsr_rsc & 0x90) |
			(mac->cur_40_prime_sc << 5);
		FUNC13(rtlpriv, REG_RRSR + 2, reg_prsr_rsc);
		break;
	default:
		FUNC4("unknown bandwidth: %#X\n",
		       rtlphy->current_chan_bw);
		break;
	}
	switch (rtlphy->current_chan_bw) {
	case HT_CHANNEL_WIDTH_20:
		FUNC12(hw, RFPGA0_RFMOD, BRFMOD, 0x0);
		FUNC12(hw, RFPGA1_RFMOD, BRFMOD, 0x0);
		/* SET BIT10 BIT11  for receive cck */
		FUNC12(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10) |
			      FUNC0(11), 3);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		FUNC12(hw, RFPGA0_RFMOD, BRFMOD, 0x1);
		FUNC12(hw, RFPGA1_RFMOD, BRFMOD, 0x1);
		/* Set Control channel to upper or lower.
		 * These settings are required only for 40MHz */
		if (rtlhal->current_bandtype == BAND_ON_2_4G) {
			FUNC5(hw, &flag);
			FUNC12(hw, RCCK0_SYSTEM, BCCKSIDEBAND,
				(mac->cur_40_prime_sc >> 1));
			FUNC7(hw, &flag);
		}
		FUNC12(hw, ROFDM1_LSTF, 0xC00, mac->cur_40_prime_sc);
		/* SET BIT10 BIT11  for receive cck */
		FUNC12(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10) |
			      FUNC0(11), 0);
		FUNC12(hw, 0x818, (FUNC0(26) | FUNC0(27)),
			(mac->cur_40_prime_sc ==
			HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
		break;
	default:
		FUNC4("unknown bandwidth: %#X\n",
		       rtlphy->current_chan_bw);
		break;

	}
	FUNC6(hw, rtlphy->current_chan_bw);
	rtlphy->set_bwmode_inprogress = false;
	FUNC2(rtlpriv, COMP_SCAN, DBG_TRACE, "<==\n");
}