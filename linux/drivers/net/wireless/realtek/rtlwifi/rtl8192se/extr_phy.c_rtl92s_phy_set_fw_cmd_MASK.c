#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {int dm_flag; int thermalvalue; int /*<<< orphan*/  dynamic_txpower_enable; } ;
struct dig_t {int /*<<< orphan*/  dig_ext_port_stage; int /*<<< orphan*/  dig_enable_flag; } ;
struct rtl_priv {TYPE_1__ dm; struct dig_t dm_digtable; } ;
struct rtl_hal {int set_fwcmd_inprogress; int current_fwcmd_io; } ;
struct rtl_efuse {int* thermalmeter; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum fwcmd_iotype { ____Placeholder_fwcmd_iotype } fwcmd_iotype ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_CMD ; 
 int /*<<< orphan*/  DBG_LOUD ; 
 int /*<<< orphan*/  DIG_EXT_PORT_STAGE_0 ; 
 int /*<<< orphan*/  DIG_EXT_PORT_STAGE_1 ; 
 int FW_CMD_CTRL_DM_BY_DRIVER ; 
#define  FW_CMD_CTRL_DM_BY_DRIVER_NEW 146 
#define  FW_CMD_DIG_DISABLE 145 
#define  FW_CMD_DIG_ENABLE 144 
#define  FW_CMD_DIG_HALT 143 
#define  FW_CMD_DIG_MODE_FA 142 
#define  FW_CMD_DIG_MODE_SS 141 
#define  FW_CMD_DIG_RESUME 140 
#define  FW_CMD_HIGH_PWR_DISABLE 139 
#define  FW_CMD_HIGH_PWR_ENABLE 138 
 int /*<<< orphan*/  FUNC0 (struct rtl_priv*,int) ; 
 int FUNC1 (struct rtl_priv*) ; 
 int FUNC2 (struct rtl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl_priv*,int) ; 
#define  FW_CMD_IQK_ENABLE 137 
#define  FW_CMD_PAPE_CONTROL 136 
 int /*<<< orphan*/  FUNC4 (struct rtl_priv*,int) ; 
#define  FW_CMD_PAUSE_DM_BY_SCAN 135 
#define  FW_CMD_RA_INIT 134 
#define  FW_CMD_RA_REFRESH_BG 133 
#define  FW_CMD_RA_REFRESH_BG_COMB 132 
#define  FW_CMD_RA_REFRESH_N 131 
#define  FW_CMD_RA_REFRESH_N_COMB 130 
#define  FW_CMD_RESUME_DM_BY_SCAN 129 
#define  FW_CMD_TXPWR_TRACK_THERMAL 128 
 int FW_DIG_ENABLE_CTL ; 
 int FW_DRIVER_CTRL_DM_CTL ; 
 int FW_FA_CTL ; 
 int FW_HIGH_PWR_ENABLE_CTL ; 
 int FW_IQK_CTL ; 
 int FW_PAPE_CTL_BY_SW_HW ; 
 int FW_PWR_TRK_CTL ; 
 int FW_PWR_TRK_PARAM_CLR ; 
 int FW_RA_BG_CTL ; 
 int FW_RA_INIT_CTL ; 
 int FW_RA_N_CTL ; 
 int FW_RA_PARAM_CLR ; 
 int FW_SS_CTL ; 
 int HAL_DM_DIG_DISABLE ; 
 int HAL_DM_HIPWR_DISABLE ; 
 int /*<<< orphan*/  FUNC5 (struct rtl_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct rtl_priv*) ; 
 struct rtl_efuse* FUNC8 (struct rtl_priv*) ; 
 struct rtl_hal* FUNC9 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC10 (struct ieee80211_hw*) ; 

bool FUNC11(struct ieee80211_hw *hw, enum fwcmd_iotype fw_cmdio)
{
	struct rtl_priv *rtlpriv = FUNC10(hw);
	struct dig_t *digtable = &rtlpriv->dm_digtable;
	struct rtl_hal *rtlhal = FUNC9(FUNC10(hw));
	struct rtl_efuse *rtlefuse = FUNC8(FUNC10(hw));
	u32	fw_param = FUNC1(rtlpriv);
	u16	fw_cmdmap = FUNC2(rtlpriv);
	bool postprocessing = false;

	FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
		 "Set FW Cmd(%#x), set_fwcmd_inprogress(%d)\n",
		 fw_cmdio, rtlhal->set_fwcmd_inprogress);

	do {
		/* We re-map to combined FW CMD ones if firmware version */
		/* is v.53 or later. */
		if (FUNC7(rtlpriv) >= 0x35) {
			switch (fw_cmdio) {
			case FW_CMD_RA_REFRESH_N:
				fw_cmdio = FW_CMD_RA_REFRESH_N_COMB;
				break;
			case FW_CMD_RA_REFRESH_BG:
				fw_cmdio = FW_CMD_RA_REFRESH_BG_COMB;
				break;
			default:
				break;
			}
		} else {
			if ((fw_cmdio == FW_CMD_IQK_ENABLE) ||
			    (fw_cmdio == FW_CMD_RA_REFRESH_N) ||
			    (fw_cmdio == FW_CMD_RA_REFRESH_BG)) {
				postprocessing = true;
				break;
			}
		}

		/* If firmware version is v.62 or later,
		 * use FW_CMD_IO_SET for FW_CMD_CTRL_DM_BY_DRIVER */
		if (FUNC7(rtlpriv) >= 0x3E) {
			if (fw_cmdio == FW_CMD_CTRL_DM_BY_DRIVER)
				fw_cmdio = FW_CMD_CTRL_DM_BY_DRIVER_NEW;
		}


		/* We shall revise all FW Cmd IO into Reg0x364
		 * DM map table in the future. */
		switch (fw_cmdio) {
		case FW_CMD_RA_INIT:
			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD, "RA init!!\n");
			fw_cmdmap |= FW_RA_INIT_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			/* Clear control flag to sync with FW. */
			FUNC0(rtlpriv, FW_RA_INIT_CTL);
			break;
		case FW_CMD_DIG_DISABLE:
			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
				 "Set DIG disable!!\n");
			fw_cmdmap &= ~FW_DIG_ENABLE_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			break;
		case FW_CMD_DIG_ENABLE:
		case FW_CMD_DIG_RESUME:
			if (!(rtlpriv->dm.dm_flag & HAL_DM_DIG_DISABLE)) {
				FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
					 "Set DIG enable or resume!!\n");
				fw_cmdmap |= (FW_DIG_ENABLE_CTL | FW_SS_CTL);
				FUNC3(rtlpriv, fw_cmdmap);
			}
			break;
		case FW_CMD_DIG_HALT:
			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
				 "Set DIG halt!!\n");
			fw_cmdmap &= ~(FW_DIG_ENABLE_CTL | FW_SS_CTL);
			FUNC3(rtlpriv, fw_cmdmap);
			break;
		case FW_CMD_TXPWR_TRACK_THERMAL: {
			u8	thermalval = 0;
			fw_cmdmap |= FW_PWR_TRK_CTL;

			/* Clear FW parameter in terms of thermal parts. */
			fw_param &= FW_PWR_TRK_PARAM_CLR;

			thermalval = rtlpriv->dm.thermalvalue;
			fw_param |= ((thermalval << 24) |
				     (rtlefuse->thermalmeter[0] << 16));

			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
				 "Set TxPwr tracking!! FwCmdMap(%#x), FwParam(%#x)\n",
				 fw_cmdmap, fw_param);

			FUNC4(rtlpriv, fw_param);
			FUNC3(rtlpriv, fw_cmdmap);

			/* Clear control flag to sync with FW. */
			FUNC0(rtlpriv, FW_PWR_TRK_CTL);
			}
			break;
		/* The following FW CMDs are only compatible to
		 * v.53 or later. */
		case FW_CMD_RA_REFRESH_N_COMB:
			fw_cmdmap |= FW_RA_N_CTL;

			/* Clear RA BG mode control. */
			fw_cmdmap &= ~(FW_RA_BG_CTL | FW_RA_INIT_CTL);

			/* Clear FW parameter in terms of RA parts. */
			fw_param &= FW_RA_PARAM_CLR;

			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
				 "[FW CMD] [New Version] Set RA/IOT Comb in n mode!! FwCmdMap(%#x), FwParam(%#x)\n",
				 fw_cmdmap, fw_param);

			FUNC4(rtlpriv, fw_param);
			FUNC3(rtlpriv, fw_cmdmap);

			/* Clear control flag to sync with FW. */
			FUNC0(rtlpriv, FW_RA_N_CTL);
			break;
		case FW_CMD_RA_REFRESH_BG_COMB:
			fw_cmdmap |= FW_RA_BG_CTL;

			/* Clear RA n-mode control. */
			fw_cmdmap &= ~(FW_RA_N_CTL | FW_RA_INIT_CTL);
			/* Clear FW parameter in terms of RA parts. */
			fw_param &= FW_RA_PARAM_CLR;

			FUNC4(rtlpriv, fw_param);
			FUNC3(rtlpriv, fw_cmdmap);

			/* Clear control flag to sync with FW. */
			FUNC0(rtlpriv, FW_RA_BG_CTL);
			break;
		case FW_CMD_IQK_ENABLE:
			fw_cmdmap |= FW_IQK_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			/* Clear control flag to sync with FW. */
			FUNC0(rtlpriv, FW_IQK_CTL);
			break;
		/* The following FW CMD is compatible to v.62 or later.  */
		case FW_CMD_CTRL_DM_BY_DRIVER_NEW:
			fw_cmdmap |= FW_DRIVER_CTRL_DM_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			break;
		/*  The followed FW Cmds needs post-processing later. */
		case FW_CMD_RESUME_DM_BY_SCAN:
			fw_cmdmap |= (FW_DIG_ENABLE_CTL |
				      FW_HIGH_PWR_ENABLE_CTL |
				      FW_SS_CTL);

			if (rtlpriv->dm.dm_flag & HAL_DM_DIG_DISABLE ||
				!digtable->dig_enable_flag)
				fw_cmdmap &= ~FW_DIG_ENABLE_CTL;

			if ((rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) ||
			    rtlpriv->dm.dynamic_txpower_enable)
				fw_cmdmap &= ~FW_HIGH_PWR_ENABLE_CTL;

			if ((digtable->dig_ext_port_stage ==
			    DIG_EXT_PORT_STAGE_0) ||
			    (digtable->dig_ext_port_stage ==
			    DIG_EXT_PORT_STAGE_1))
				fw_cmdmap &= ~FW_DIG_ENABLE_CTL;

			FUNC3(rtlpriv, fw_cmdmap);
			postprocessing = true;
			break;
		case FW_CMD_PAUSE_DM_BY_SCAN:
			fw_cmdmap &= ~(FW_DIG_ENABLE_CTL |
				       FW_HIGH_PWR_ENABLE_CTL |
				       FW_SS_CTL);
			FUNC3(rtlpriv, fw_cmdmap);
			postprocessing = true;
			break;
		case FW_CMD_HIGH_PWR_DISABLE:
			fw_cmdmap &= ~FW_HIGH_PWR_ENABLE_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			postprocessing = true;
			break;
		case FW_CMD_HIGH_PWR_ENABLE:
			if (!(rtlpriv->dm.dm_flag & HAL_DM_HIPWR_DISABLE) &&
			    !rtlpriv->dm.dynamic_txpower_enable) {
				fw_cmdmap |= (FW_HIGH_PWR_ENABLE_CTL |
					      FW_SS_CTL);
				FUNC3(rtlpriv, fw_cmdmap);
				postprocessing = true;
			}
			break;
		case FW_CMD_DIG_MODE_FA:
			fw_cmdmap |= FW_FA_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			break;
		case FW_CMD_DIG_MODE_SS:
			fw_cmdmap &= ~FW_FA_CTL;
			FUNC3(rtlpriv, fw_cmdmap);
			break;
		case FW_CMD_PAPE_CONTROL:
			FUNC5(rtlpriv, COMP_CMD, DBG_LOUD,
				 "[FW CMD] Set PAPE Control\n");
			fw_cmdmap &= ~FW_PAPE_CTL_BY_SW_HW;

			FUNC3(rtlpriv, fw_cmdmap);
			break;
		default:
			/* Pass to original FW CMD processing callback
			 * routine. */
			postprocessing = true;
			break;
		}
	} while (false);

	/* We shall post processing these FW CMD if
	 * variable postprocessing is set.
	 */
	if (postprocessing && !rtlhal->set_fwcmd_inprogress) {
		rtlhal->set_fwcmd_inprogress = true;
		/* Update current FW Cmd for callback use. */
		rtlhal->current_fwcmd_io = fw_cmdio;
	} else {
		return false;
	}

	FUNC6(hw);
	return true;
}