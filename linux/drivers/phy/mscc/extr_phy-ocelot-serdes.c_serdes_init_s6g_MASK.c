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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HSIO_S6G_COMMON_CFG ; 
 int HSIO_S6G_COMMON_CFG_ENA_ELOOP ; 
 int HSIO_S6G_COMMON_CFG_ENA_FLOOP ; 
 int HSIO_S6G_COMMON_CFG_ENA_LANE ; 
 int HSIO_S6G_COMMON_CFG_HRATE ; 
 int FUNC0 (int) ; 
 int HSIO_S6G_COMMON_CFG_IF_MODE_M ; 
 int HSIO_S6G_COMMON_CFG_PWD_RX ; 
 int HSIO_S6G_COMMON_CFG_PWD_TX ; 
 int HSIO_S6G_COMMON_CFG_QRATE ; 
 int HSIO_S6G_COMMON_CFG_SYS_RST ; 
 int /*<<< orphan*/  HSIO_S6G_DES_CFG ; 
 int FUNC1 (int) ; 
 int HSIO_S6G_DES_CFG_DES_BW_ANA_M ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_DES_CFG_DES_CPMD_SEL_M ; 
 int FUNC3 (int) ; 
 int HSIO_S6G_DES_CFG_DES_PHS_CTRL_M ; 
 int /*<<< orphan*/  HSIO_S6G_IB_CFG ; 
 int /*<<< orphan*/  HSIO_S6G_IB_CFG1 ; 
 int HSIO_S6G_IB_CFG1_IB_FILT_HP ; 
 int HSIO_S6G_IB_CFG1_IB_FILT_LP ; 
 int HSIO_S6G_IB_CFG1_IB_FILT_MID ; 
 int HSIO_S6G_IB_CFG1_IB_FILT_OFFSET ; 
 int HSIO_S6G_IB_CFG1_IB_FRC_HP ; 
 int HSIO_S6G_IB_CFG1_IB_FRC_LP ; 
 int HSIO_S6G_IB_CFG1_IB_FRC_MID ; 
 int HSIO_S6G_IB_CFG1_IB_FRC_OFFSET ; 
 int FUNC4 (int) ; 
 int HSIO_S6G_IB_CFG1_IB_TSDET_M ; 
 int /*<<< orphan*/  HSIO_S6G_IB_CFG2 ; 
 int FUNC5 (int) ; 
 int HSIO_S6G_IB_CFG2_IB_UREG_M ; 
 int /*<<< orphan*/  HSIO_S6G_IB_CFG3 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_IB_CFG3_IB_INI_HP_M ; 
 int FUNC7 (int) ; 
 int HSIO_S6G_IB_CFG3_IB_INI_LP_M ; 
 int FUNC8 (int) ; 
 int HSIO_S6G_IB_CFG3_IB_INI_MID_M ; 
 int FUNC9 (int) ; 
 int HSIO_S6G_IB_CFG3_IB_INI_OFFSET_M ; 
 int HSIO_S6G_IB_CFG_IB_CAL_ENA ; 
 int HSIO_S6G_IB_CFG_IB_CONCUR ; 
 int HSIO_S6G_IB_CFG_IB_EQZ_ENA ; 
 int HSIO_S6G_IB_CFG_IB_REG_ENA ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M ; 
 int HSIO_S6G_IB_CFG_IB_SAM_ENA ; 
 int FUNC11 (int) ; 
 int HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M ; 
 int HSIO_S6G_IB_CFG_IB_SIG_DET_ENA ; 
 int /*<<< orphan*/  HSIO_S6G_MISC_CFG ; 
 int HSIO_S6G_MISC_CFG_DES_100FX_CPMD_ENA ; 
 int HSIO_S6G_MISC_CFG_LANE_RST ; 
 int HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA ; 
 int HSIO_S6G_MISC_CFG_TX_LPI_MODE_ENA ; 
 int /*<<< orphan*/  HSIO_S6G_OB_CFG ; 
 int /*<<< orphan*/  HSIO_S6G_OB_CFG1 ; 
 int FUNC12 (int) ; 
 int HSIO_S6G_OB_CFG1_OB_ENA_CAS_M ; 
 int FUNC13 (int) ; 
 int HSIO_S6G_OB_CFG1_OB_LEV_M ; 
 int HSIO_S6G_OB_CFG_OB_ENA1V_MODE ; 
 int HSIO_S6G_OB_CFG_OB_IDLE ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_OB_CFG_OB_POST0_M ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_OB_CFG_OB_PREC_M ; 
 int /*<<< orphan*/  HSIO_S6G_PLL_CFG ; 
 int HSIO_S6G_PLL_CFG_PLL_DIV4 ; 
 int HSIO_S6G_PLL_CFG_PLL_ENA_ROT ; 
 int FUNC16 (int) ; 
 int HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA_M ; 
 int HSIO_S6G_PLL_CFG_PLL_FSM_ENA ; 
 int HSIO_S6G_PLL_CFG_PLL_ROT_DIR ; 
 int HSIO_S6G_PLL_CFG_PLL_ROT_FRQ ; 
 int /*<<< orphan*/  HSIO_S6G_SER_CFG ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int HSIO_S6G_SER_CFG_SER_ALISEL_M ; 
 int HSIO_S6G_SER_CFG_SER_ENALI ; 
 int PHY_INTERFACE_MODE_QSGMII ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC20 (struct regmap*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct regmap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct regmap *regmap, u8 serdes, int mode)
{
	u32 pll_fsm_ctrl_data;
	u32 ob_ena1v_mode;
	u32 des_bw_ana;
	u32 ob_ena_cas;
	u32 if_mode;
	u32 ob_lev;
	u32 qrate;
	int ret;

	if (mode == PHY_INTERFACE_MODE_QSGMII) {
		pll_fsm_ctrl_data = 120;
		ob_ena1v_mode = 0;
		ob_ena_cas = 0;
		des_bw_ana = 5;
		ob_lev = 24;
		if_mode = 3;
		qrate = 0;
	} else {
		pll_fsm_ctrl_data = 60;
		ob_ena1v_mode = 1;
		ob_ena_cas = 2;
		des_bw_ana = 3;
		ob_lev = 48;
		if_mode = 1;
		qrate = 1;
	}

	ret = FUNC21(regmap, serdes);
	if (ret)
		return ret;

	/* Test pattern */

	FUNC19(regmap, HSIO_S6G_COMMON_CFG,
			   HSIO_S6G_COMMON_CFG_SYS_RST, 0);

	FUNC19(regmap, HSIO_S6G_PLL_CFG,
			   HSIO_S6G_PLL_CFG_PLL_FSM_ENA, 0);

	FUNC19(regmap, HSIO_S6G_IB_CFG,
			   HSIO_S6G_IB_CFG_IB_SIG_DET_ENA |
			   HSIO_S6G_IB_CFG_IB_REG_ENA |
			   HSIO_S6G_IB_CFG_IB_SAM_ENA |
			   HSIO_S6G_IB_CFG_IB_EQZ_ENA |
			   HSIO_S6G_IB_CFG_IB_CONCUR |
			   HSIO_S6G_IB_CFG_IB_CAL_ENA,
			   HSIO_S6G_IB_CFG_IB_SIG_DET_ENA |
			   HSIO_S6G_IB_CFG_IB_REG_ENA |
			   HSIO_S6G_IB_CFG_IB_SAM_ENA |
			   HSIO_S6G_IB_CFG_IB_EQZ_ENA |
			   HSIO_S6G_IB_CFG_IB_CONCUR);

	FUNC19(regmap, HSIO_S6G_IB_CFG1,
			   HSIO_S6G_IB_CFG1_IB_FRC_OFFSET |
			   HSIO_S6G_IB_CFG1_IB_FRC_LP |
			   HSIO_S6G_IB_CFG1_IB_FRC_MID |
			   HSIO_S6G_IB_CFG1_IB_FRC_HP |
			   HSIO_S6G_IB_CFG1_IB_FILT_OFFSET |
			   HSIO_S6G_IB_CFG1_IB_FILT_LP |
			   HSIO_S6G_IB_CFG1_IB_FILT_MID |
			   HSIO_S6G_IB_CFG1_IB_FILT_HP,
			   HSIO_S6G_IB_CFG1_IB_FILT_OFFSET |
			   HSIO_S6G_IB_CFG1_IB_FILT_HP |
			   HSIO_S6G_IB_CFG1_IB_FILT_LP |
			   HSIO_S6G_IB_CFG1_IB_FILT_MID);

	FUNC19(regmap, HSIO_S6G_IB_CFG2,
			   HSIO_S6G_IB_CFG2_IB_UREG_M,
			   FUNC5(4));

	FUNC19(regmap, HSIO_S6G_IB_CFG3,
			   HSIO_S6G_IB_CFG3_IB_INI_OFFSET_M |
			   HSIO_S6G_IB_CFG3_IB_INI_LP_M |
			   HSIO_S6G_IB_CFG3_IB_INI_MID_M |
			   HSIO_S6G_IB_CFG3_IB_INI_HP_M,
			   FUNC9(31) |
			   FUNC7(1) |
			   FUNC8(31) |
			   FUNC6(0));

	FUNC19(regmap, HSIO_S6G_MISC_CFG,
			   HSIO_S6G_MISC_CFG_LANE_RST,
			   HSIO_S6G_MISC_CFG_LANE_RST);

	ret = FUNC20(regmap, serdes);
	if (ret)
		return ret;

	/* OB + DES + IB + SER CFG */
	FUNC19(regmap, HSIO_S6G_OB_CFG,
			   HSIO_S6G_OB_CFG_OB_IDLE |
			   HSIO_S6G_OB_CFG_OB_ENA1V_MODE |
			   HSIO_S6G_OB_CFG_OB_POST0_M |
			   HSIO_S6G_OB_CFG_OB_PREC_M,
			   (ob_ena1v_mode ? HSIO_S6G_OB_CFG_OB_ENA1V_MODE : 0) |
			   FUNC14(0) |
			   FUNC15(0));

	FUNC19(regmap, HSIO_S6G_OB_CFG1,
			   HSIO_S6G_OB_CFG1_OB_ENA_CAS_M |
			   HSIO_S6G_OB_CFG1_OB_LEV_M,
			   FUNC13(ob_lev) |
			   FUNC12(ob_ena_cas));

	FUNC19(regmap, HSIO_S6G_DES_CFG,
			   HSIO_S6G_DES_CFG_DES_PHS_CTRL_M |
			   HSIO_S6G_DES_CFG_DES_CPMD_SEL_M |
			   HSIO_S6G_DES_CFG_DES_BW_ANA_M,
			   FUNC3(2) |
			   FUNC2(0) |
			   FUNC1(des_bw_ana));

	FUNC19(regmap, HSIO_S6G_IB_CFG,
			   HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M |
			   HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M,
			   FUNC10(0) |
			   FUNC11(0));

	FUNC19(regmap, HSIO_S6G_IB_CFG1,
			   HSIO_S6G_IB_CFG1_IB_TSDET_M,
			   FUNC4(16));

	FUNC19(regmap, HSIO_S6G_SER_CFG,
			   HSIO_S6G_SER_CFG_SER_ALISEL_M |
			   HSIO_S6G_SER_CFG_SER_ENALI,
			   FUNC17(0));

	FUNC19(regmap, HSIO_S6G_PLL_CFG,
			   HSIO_S6G_PLL_CFG_PLL_DIV4 |
			   HSIO_S6G_PLL_CFG_PLL_ENA_ROT |
			   HSIO_S6G_PLL_CFG_PLL_FSM_CTRL_DATA_M |
			   HSIO_S6G_PLL_CFG_PLL_ROT_DIR |
			   HSIO_S6G_PLL_CFG_PLL_ROT_FRQ,
			   FUNC16
			   (pll_fsm_ctrl_data));

	FUNC19(regmap, HSIO_S6G_COMMON_CFG,
			   HSIO_S6G_COMMON_CFG_SYS_RST |
			   HSIO_S6G_COMMON_CFG_ENA_LANE |
			   HSIO_S6G_COMMON_CFG_PWD_RX |
			   HSIO_S6G_COMMON_CFG_PWD_TX |
			   HSIO_S6G_COMMON_CFG_HRATE |
			   HSIO_S6G_COMMON_CFG_QRATE |
			   HSIO_S6G_COMMON_CFG_ENA_ELOOP |
			   HSIO_S6G_COMMON_CFG_ENA_FLOOP |
			   HSIO_S6G_COMMON_CFG_IF_MODE_M,
			   HSIO_S6G_COMMON_CFG_SYS_RST |
			   HSIO_S6G_COMMON_CFG_ENA_LANE |
			   (qrate ? HSIO_S6G_COMMON_CFG_QRATE : 0) |
			   FUNC0(if_mode));

	FUNC19(regmap, HSIO_S6G_MISC_CFG,
			   HSIO_S6G_MISC_CFG_LANE_RST |
			   HSIO_S6G_MISC_CFG_DES_100FX_CPMD_ENA |
			   HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA |
			   HSIO_S6G_MISC_CFG_TX_LPI_MODE_ENA,
			   HSIO_S6G_MISC_CFG_LANE_RST |
			   HSIO_S6G_MISC_CFG_RX_LPI_MODE_ENA);


	ret = FUNC20(regmap, serdes);
	if (ret)
		return ret;

	FUNC19(regmap, HSIO_S6G_PLL_CFG,
			   HSIO_S6G_PLL_CFG_PLL_FSM_ENA,
			   HSIO_S6G_PLL_CFG_PLL_FSM_ENA);

	ret = FUNC20(regmap, serdes);
	if (ret)
		return ret;

	/* Wait for PLL bringup */
	FUNC18(20);

	FUNC19(regmap, HSIO_S6G_IB_CFG,
			   HSIO_S6G_IB_CFG_IB_CAL_ENA,
			   HSIO_S6G_IB_CFG_IB_CAL_ENA);

	FUNC19(regmap, HSIO_S6G_MISC_CFG,
			   HSIO_S6G_MISC_CFG_LANE_RST, 0);

	ret = FUNC20(regmap, serdes);
	if (ret)
		return ret;

	/* Wait for calibration */
	FUNC18(60);

	FUNC19(regmap, HSIO_S6G_IB_CFG,
			   HSIO_S6G_IB_CFG_IB_REG_PAT_SEL_OFFSET_M |
			   HSIO_S6G_IB_CFG_IB_SIG_DET_CLK_SEL_M,
			   FUNC10(0) |
			   FUNC11(7));

	FUNC19(regmap, HSIO_S6G_IB_CFG1,
			   HSIO_S6G_IB_CFG1_IB_TSDET_M,
			   FUNC4(3));

	/* IB CFG */

	return 0;
}