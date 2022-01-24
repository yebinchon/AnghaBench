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
struct rtl_phy {int current_chan_bw; int set_bwmode_inprogress; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct rtl_mac {int cur_40_prime_sc; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BCCK_SIDEBAND ; 
 int FUNC0 (int) ; 
 int BRFMOD ; 
 int BW_OPMODE_20MHZ ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_TRACE ; 
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
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_mac* FUNC6 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 int FUNC8 (struct rtl_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_hw*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rtl_priv*,scalar_t__,int) ; 

void FUNC11(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_hal *rtlhal = FUNC5(FUNC7(hw));
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	struct rtl_mac *mac = FUNC6(FUNC7(hw));
	u8 reg_bw_opmode;
	u8 reg_prsr_rsc;

	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "Switch to %s bandwidth\n",
		  rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20 ?
		  "20MHz" : "40MHz");

	if (FUNC2(rtlhal)) {
		rtlphy->set_bwmode_inprogress = false;
		return;
	}

	reg_bw_opmode = FUNC8(rtlpriv, REG_BWOPMODE);
	reg_prsr_rsc = FUNC8(rtlpriv, REG_RRSR + 2);

	switch (rtlphy->current_chan_bw) {
	case HT_CHANNEL_WIDTH_20:
		reg_bw_opmode |= BW_OPMODE_20MHZ;
		FUNC10(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		reg_bw_opmode &= ~BW_OPMODE_20MHZ;
		FUNC10(rtlpriv, REG_BWOPMODE, reg_bw_opmode);
		reg_prsr_rsc =
		    (reg_prsr_rsc & 0x90) | (mac->cur_40_prime_sc << 5);
		FUNC10(rtlpriv, REG_RRSR + 2, reg_prsr_rsc);
		break;
	default:
		FUNC3("unknown bandwidth: %#X\n",
		       rtlphy->current_chan_bw);
		break;
	}

	switch (rtlphy->current_chan_bw) {
	case HT_CHANNEL_WIDTH_20:
		FUNC9(hw, RFPGA0_RFMOD, BRFMOD, 0x0);
		FUNC9(hw, RFPGA1_RFMOD, BRFMOD, 0x0);
		FUNC9(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10), 1);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		FUNC9(hw, RFPGA0_RFMOD, BRFMOD, 0x1);
		FUNC9(hw, RFPGA1_RFMOD, BRFMOD, 0x1);

		FUNC9(hw, RCCK0_SYSTEM, BCCK_SIDEBAND,
			      (mac->cur_40_prime_sc >> 1));
		FUNC9(hw, ROFDM1_LSTF, 0xC00, mac->cur_40_prime_sc);
		FUNC9(hw, RFPGA0_ANALOGPARAMETER2, FUNC0(10), 0);

		FUNC9(hw, 0x818, (FUNC0(26) | FUNC0(27)),
			      (mac->cur_40_prime_sc ==
			       HAL_PRIME_CHNL_OFFSET_LOWER) ? 2 : 1);
		break;
	default:
		FUNC3("unknown bandwidth: %#X\n",
		       rtlphy->current_chan_bw);
		break;
	}
	FUNC4(hw, rtlphy->current_chan_bw);
	rtlphy->set_bwmode_inprogress = false;
	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE, "\n");
}