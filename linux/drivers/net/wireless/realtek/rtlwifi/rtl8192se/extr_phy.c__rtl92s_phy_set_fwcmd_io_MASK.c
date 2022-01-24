#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int assoc_id; } ;
struct TYPE_3__ {int dm_flag; int /*<<< orphan*/  dynamic_txpower_enable; } ;
struct rtl_phy {int /*<<< orphan*/  current_channel; } ;
struct rtl_priv {TYPE_2__ mac80211; TYPE_1__ dm; struct rtl_phy phy; } ;
struct rtl_hal {int current_fwcmd_io; int set_fwcmd_inprogress; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_DMESG ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int FW_ADD_A2_ENTRY ; 
#define  FW_CMD_ADD_A2_ENTRY 142 
#define  FW_CMD_CTRL_DM_BY_DRIVER 141 
#define  FW_CMD_HIGH_PWR_DISABLE 140 
#define  FW_CMD_HIGH_PWR_ENABLE 139 
#define  FW_CMD_IQK_ENABLE 138 
#define  FW_CMD_LPS_ENTER 137 
#define  FW_CMD_LPS_LEAVE 136 
#define  FW_CMD_PAUSE_DM_BY_SCAN 135 
#define  FW_CMD_RA_ACTIVE 134 
#define  FW_CMD_RA_REFRESH_BG 133 
#define  FW_CMD_RA_REFRESH_BG_COMB 132 
#define  FW_CMD_RA_REFRESH_N 131 
#define  FW_CMD_RA_REFRESH_N_COMB 130 
#define  FW_CMD_RA_RESET 129 
#define  FW_CMD_RESUME_DM_BY_SCAN 128 
 int FW_CTRL_DM_BY_DRIVER ; 
 int FW_IQK_ENABLE ; 
 int FW_LPS_ENTER ; 
 int FW_LPS_LEAVE ; 
 int FW_RA_ACTIVE ; 
 int FW_RA_DISABLE_RSSI_MASK ; 
 int FW_RA_ENABLE_RSSI_MASK ; 
 int FW_RA_IOT_BG_COMB ; 
 int FW_RA_IOT_N_COMB ; 
 int FW_RA_REFRESH ; 
 int FW_RA_RESET ; 
 int HAL_DM_HIPWR_DISABLE ; 
 int /*<<< orphan*/  MASKBYTE0 ; 
 int /*<<< orphan*/  MASKBYTE2 ; 
 int /*<<< orphan*/  RCCK0_CCA ; 
 int /*<<< orphan*/  ROFDM0_XAAGCCORE1 ; 
 int /*<<< orphan*/  ROFDM0_XBAGCCORE1 ; 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WFM5 ; 
 int FUNC1 (struct rtl_priv*) ; 
 scalar_t__ FUNC2 (struct rtl_hal*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 struct rtl_hal* FUNC5 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC6(hw);
	struct rtl_hal *rtlhal = FUNC5(FUNC6(hw));
	struct rtl_phy *rtlphy = &(rtlpriv->phy);
	u32 input, current_aid = 0;

	if (FUNC2(rtlhal))
		return;

	if (FUNC1(rtlpriv) < 0x34)
		goto skip;
	/* We re-map RA related CMD IO to combinational ones */
	/* if FW version is v.52 or later. */
	switch (rtlhal->current_fwcmd_io) {
	case FW_CMD_RA_REFRESH_N:
		rtlhal->current_fwcmd_io = FW_CMD_RA_REFRESH_N_COMB;
		break;
	case FW_CMD_RA_REFRESH_BG:
		rtlhal->current_fwcmd_io = FW_CMD_RA_REFRESH_BG_COMB;
		break;
	default:
		break;
	}

skip:
	switch (rtlhal->current_fwcmd_io) {
	case FW_CMD_RA_RESET:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_RESET\n");
		FUNC8(rtlpriv, WFM5, FW_RA_RESET);
		FUNC3(hw);
		break;
	case FW_CMD_RA_ACTIVE:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_ACTIVE\n");
		FUNC8(rtlpriv, WFM5, FW_RA_ACTIVE);
		FUNC3(hw);
		break;
	case FW_CMD_RA_REFRESH_N:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_RA_REFRESH_N\n");
		input = FW_RA_REFRESH;
		FUNC8(rtlpriv, WFM5, input);
		FUNC3(hw);
		FUNC8(rtlpriv, WFM5, FW_RA_ENABLE_RSSI_MASK);
		FUNC3(hw);
		break;
	case FW_CMD_RA_REFRESH_BG:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
			 "FW_CMD_RA_REFRESH_BG\n");
		FUNC8(rtlpriv, WFM5, FW_RA_REFRESH);
		FUNC3(hw);
		FUNC8(rtlpriv, WFM5, FW_RA_DISABLE_RSSI_MASK);
		FUNC3(hw);
		break;
	case FW_CMD_RA_REFRESH_N_COMB:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
			 "FW_CMD_RA_REFRESH_N_COMB\n");
		input = FW_RA_IOT_N_COMB;
		FUNC8(rtlpriv, WFM5, input);
		FUNC3(hw);
		break;
	case FW_CMD_RA_REFRESH_BG_COMB:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG,
			 "FW_CMD_RA_REFRESH_BG_COMB\n");
		input = FW_RA_IOT_BG_COMB;
		FUNC8(rtlpriv, WFM5, input);
		FUNC3(hw);
		break;
	case FW_CMD_IQK_ENABLE:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_IQK_ENABLE\n");
		FUNC8(rtlpriv, WFM5, FW_IQK_ENABLE);
		FUNC3(hw);
		break;
	case FW_CMD_PAUSE_DM_BY_SCAN:
		/* Lower initial gain */
		FUNC7(hw, ROFDM0_XAAGCCORE1, MASKBYTE0, 0x17);
		FUNC7(hw, ROFDM0_XBAGCCORE1, MASKBYTE0, 0x17);
		/* CCA threshold */
		FUNC7(hw, RCCK0_CCA, MASKBYTE2, 0x40);
		break;
	case FW_CMD_RESUME_DM_BY_SCAN:
		/* CCA threshold */
		FUNC7(hw, RCCK0_CCA, MASKBYTE2, 0xcd);
		FUNC4(hw, rtlphy->current_channel);
		break;
	case FW_CMD_HIGH_PWR_DISABLE:
		if (rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE)
			break;

		/* Lower initial gain */
		FUNC7(hw, ROFDM0_XAAGCCORE1, MASKBYTE0, 0x17);
		FUNC7(hw, ROFDM0_XBAGCCORE1, MASKBYTE0, 0x17);
		/* CCA threshold */
		FUNC7(hw, RCCK0_CCA, MASKBYTE2, 0x40);
		break;
	case FW_CMD_HIGH_PWR_ENABLE:
		if ((rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) ||
			rtlpriv->dm.dynamic_txpower_enable)
			break;

		/* CCA threshold */
		FUNC7(hw, RCCK0_CCA, MASKBYTE2, 0xcd);
		break;
	case FW_CMD_LPS_ENTER:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_LPS_ENTER\n");
		current_aid = rtlpriv->mac80211.assoc_id;
		FUNC8(rtlpriv, WFM5, (FW_LPS_ENTER |
				((current_aid | 0xc000) << 8)));
		FUNC3(hw);
		/* FW set TXOP disable here, so disable EDCA
		 * turbo mode until driver leave LPS */
		break;
	case FW_CMD_LPS_LEAVE:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_LPS_LEAVE\n");
		FUNC8(rtlpriv, WFM5, FW_LPS_LEAVE);
		FUNC3(hw);
		break;
	case FW_CMD_ADD_A2_ENTRY:
		FUNC0(rtlpriv, COMP_CMD, DBG_DMESG, "FW_CMD_ADD_A2_ENTRY\n");
		FUNC8(rtlpriv, WFM5, FW_ADD_A2_ENTRY);
		FUNC3(hw);
		break;
	case FW_CMD_CTRL_DM_BY_DRIVER:
		FUNC0(rtlpriv, COMP_CMD, DBG_LOUD,
			 "FW_CMD_CTRL_DM_BY_DRIVER\n");
		FUNC8(rtlpriv, WFM5, FW_CTRL_DM_BY_DRIVER);
		FUNC3(hw);
		break;

	default:
		break;
	}

	FUNC3(hw);

	/* Clear FW CMD operation flag. */
	rtlhal->set_fwcmd_inprogress = false;
}