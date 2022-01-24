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
struct rtl_phy {int current_chan_bw; int reg_837; int set_bwmode_inprogress; int /*<<< orphan*/  current_channel; int /*<<< orphan*/  rf_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int BCCK_SYSTEM ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  COMP_SCAN ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DBG_TRACE ; 
#define  HT_CHANNEL_WIDTH_20 130 
#define  HT_CHANNEL_WIDTH_20_40 129 
#define  HT_CHANNEL_WIDTH_80 128 
 int /*<<< orphan*/  RADC_BUF_CLK ; 
 int /*<<< orphan*/  RCCAONSEC ; 
 int /*<<< orphan*/  RCCK_SYSTEM ; 
 int /*<<< orphan*/  RF_2T2R ; 
 int /*<<< orphan*/  RL1PEAKTH ; 
 int /*<<< orphan*/  RRFMOD ; 
 int /*<<< orphan*/  FUNC1 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int VHT_DATA_SC_20_UPPER_OF_80MHZ ; 
 int FUNC2 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int) ; 
 struct rtl_priv* FUNC7 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rtl_priv*,int,int) ; 

void FUNC10(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC7(hw);
	struct rtl_phy *rtlphy = &rtlpriv->phy;
	u8 sub_chnl = 0;
	u8 l1pk_val = 0;

	FUNC1(rtlpriv, COMP_SCAN, DBG_TRACE,
		 "Switch to %s bandwidth\n",
		  (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20 ?
		  "20MHz" :
		  (rtlphy->current_chan_bw == HT_CHANNEL_WIDTH_20_40 ?
		  "40MHz" : "80MHz")));

	FUNC3(rtlpriv, rtlphy->current_chan_bw);
	sub_chnl = FUNC2(rtlpriv);
	FUNC9(rtlpriv, 0x0483, sub_chnl);

	switch (rtlphy->current_chan_bw) {
	case HT_CHANNEL_WIDTH_20:
		FUNC8(hw, RRFMOD, 0x003003C3, 0x00300200);
		FUNC8(hw, RADC_BUF_CLK, FUNC0(30), 0);

		if (rtlphy->rf_type == RF_2T2R)
			FUNC8(hw, RL1PEAKTH, 0x03C00000, 7);
		else
			FUNC8(hw, RL1PEAKTH, 0x03C00000, 8);
		break;
	case HT_CHANNEL_WIDTH_20_40:
		FUNC8(hw, RRFMOD, 0x003003C3, 0x00300201);
		FUNC8(hw, RADC_BUF_CLK, FUNC0(30), 0);
		FUNC8(hw, RRFMOD, 0x3C, sub_chnl);
		FUNC8(hw, RCCAONSEC, 0xf0000000, sub_chnl);

		if (rtlphy->reg_837 & FUNC0(2))
			l1pk_val = 6;
		else {
			if (rtlphy->rf_type == RF_2T2R)
				l1pk_val = 7;
			else
				l1pk_val = 8;
		}
		/* 0x848[25:22] = 0x6 */
		FUNC8(hw, RL1PEAKTH, 0x03C00000, l1pk_val);

		if (sub_chnl == VHT_DATA_SC_20_UPPER_OF_80MHZ)
			FUNC8(hw, RCCK_SYSTEM, BCCK_SYSTEM, 1);
		else
			FUNC8(hw, RCCK_SYSTEM, BCCK_SYSTEM, 0);
		break;

	case HT_CHANNEL_WIDTH_80:
		 /* 0x8ac[21,20,9:6,1,0]=8'b11100010 */
		FUNC8(hw, RRFMOD, 0x003003C3, 0x00300202);
		/* 0x8c4[30] = 1 */
		FUNC8(hw, RADC_BUF_CLK, FUNC0(30), 1);
		FUNC8(hw, RRFMOD, 0x3C, sub_chnl);
		FUNC8(hw, RCCAONSEC, 0xf0000000, sub_chnl);

		if (rtlphy->reg_837 & FUNC0(2))
			l1pk_val = 5;
		else {
			if (rtlphy->rf_type == RF_2T2R)
				l1pk_val = 6;
			else
				l1pk_val = 7;
		}
		FUNC8(hw, RL1PEAKTH, 0x03C00000, l1pk_val);

		break;
	default:
		FUNC4("unknown bandwidth: %#X\n",
		       rtlphy->current_chan_bw);
		break;
	}

	FUNC5(hw, rtlphy->current_chan_bw, rtlphy->current_channel);

	FUNC6(hw, rtlphy->current_chan_bw);
	rtlphy->set_bwmode_inprogress = false;

	FUNC1(rtlpriv, COMP_SCAN, DBG_LOUD, "\n");
}