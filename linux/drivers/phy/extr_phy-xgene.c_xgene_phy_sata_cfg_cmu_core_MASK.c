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
typedef  int u32 ;
struct xgene_phy_ctx {int dummy; } ;
typedef  enum cmu_type_t { ____Placeholder_cmu_type_t } cmu_type_t ;
typedef  enum clk_type_t { ____Placeholder_clk_type_t } clk_type_t ;

/* Variables and functions */
 int CLK_EXT_DIFF ; 
 int /*<<< orphan*/  CMU_REG0 ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  CMU_REG1 ; 
 int /*<<< orphan*/  CMU_REG10 ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  CMU_REG16 ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  CMU_REG2 ; 
 int /*<<< orphan*/  CMU_REG26 ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMU_REG3 ; 
 int /*<<< orphan*/  CMU_REG30 ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int,int) ; 
 int /*<<< orphan*/  CMU_REG31 ; 
 int /*<<< orphan*/  CMU_REG32 ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (int,int) ; 
 int /*<<< orphan*/  CMU_REG34 ; 
 int FUNC16 (int,int) ; 
 int FUNC17 (int,int) ; 
 int FUNC18 (int,int) ; 
 int FUNC19 (int,int) ; 
 int /*<<< orphan*/  CMU_REG37 ; 
 int FUNC20 (int,int) ; 
 int FUNC21 (int,int) ; 
 int FUNC22 (int,int) ; 
 int /*<<< orphan*/  CMU_REG5 ; 
 int FUNC23 (int,int) ; 
 int FUNC24 (int,int) ; 
 int FUNC25 (int,int) ; 
 int /*<<< orphan*/  CMU_REG5_PLL_RESETB_MASK ; 
 int /*<<< orphan*/  CMU_REG6 ; 
 int FUNC26 (int,int) ; 
 int FUNC27 (int,int) ; 
 int /*<<< orphan*/  CMU_REG9 ; 
 int FUNC28 (int,int) ; 
 int FUNC29 (int,int) ; 
 int FUNC30 (int,int /*<<< orphan*/ ) ; 
 int FUNC31 (int,int /*<<< orphan*/ ) ; 
 int FUNC32 (int,int) ; 
 int /*<<< orphan*/  CMU_REG9_WORD_LEN_20BIT ; 
 int /*<<< orphan*/  FBDIV_VAL_100M ; 
 int /*<<< orphan*/  FBDIV_VAL_50M ; 
 int PHY_CMU ; 
 int /*<<< orphan*/  REFDIV_VAL_100M ; 
 int /*<<< orphan*/  REFDIV_VAL_50M ; 
 int REF_CMU ; 
 int /*<<< orphan*/  FUNC33 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC35 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ preA3Chip ; 

__attribute__((used)) static void FUNC36(struct xgene_phy_ctx *ctx,
					enum cmu_type_t cmu_type,
					enum clk_type_t clk_type)
{
	u32 val;
	int ref_100MHz;

	if (cmu_type == REF_CMU) {
		/* Set VCO calibration voltage threshold */
		FUNC34(ctx, cmu_type, CMU_REG34, &val);
		val = FUNC18(val, 0x7);
		val = FUNC16(val, 0xc);
		val = FUNC19(val, 0x3);
		val = FUNC17(val, 0x8);
		FUNC35(ctx, cmu_type, CMU_REG34, val);
	}

	/* Set the VCO calibration counter */
	FUNC34(ctx, cmu_type, CMU_REG0, &val);
	if (cmu_type == REF_CMU || preA3Chip)
		val = FUNC0(val, 0x4);
	else
		val = FUNC0(val, 0x7);
	FUNC35(ctx, cmu_type, CMU_REG0, val);

	/* Configure PLL for calibration */
	FUNC34(ctx, cmu_type, CMU_REG1, &val);
	val = FUNC6(val, 0x1);
	if (cmu_type == REF_CMU || preA3Chip)
		val = FUNC5(val, 0x5);
	else
		val = FUNC5(val, 0x3);
	if (cmu_type == REF_CMU)
		val = FUNC7(val, 0x0);
	else
		val = FUNC7(val, 0x1);
	FUNC35(ctx, cmu_type, CMU_REG1, val);

	if (cmu_type != REF_CMU)
		FUNC33(ctx, cmu_type, CMU_REG5, CMU_REG5_PLL_RESETB_MASK);

	/* Configure the PLL for either 100MHz or 50MHz */
	FUNC34(ctx, cmu_type, CMU_REG2, &val);
	if (cmu_type == REF_CMU) {
		val = FUNC10(val, 0xa);
		ref_100MHz = 1;
	} else {
		val = FUNC10(val, 0x3);
		if (clk_type == CLK_EXT_DIFF)
			ref_100MHz = 0;
		else
			ref_100MHz = 1;
	}
	if (ref_100MHz) {
		val = FUNC9(val, FBDIV_VAL_100M);
		val = FUNC11(val, REFDIV_VAL_100M);
	} else {
		val = FUNC9(val, FBDIV_VAL_50M);
		val = FUNC11(val, REFDIV_VAL_50M);
	}
	FUNC35(ctx, cmu_type, CMU_REG2, val);

	/* Configure the VCO */
	FUNC34(ctx, cmu_type, CMU_REG3, &val);
	if (cmu_type == REF_CMU) {
		val = FUNC20(val, 0x3);
		val = FUNC22(val, 0x10);
	} else {
		val = FUNC20(val, 0xF);
		if (preA3Chip)
			val = FUNC22(val, 0x15);
		else
			val = FUNC22(val, 0x1a);
		val = FUNC21(val, 0x15);
	}
	FUNC35(ctx, cmu_type, CMU_REG3, val);

	/* Disable force PLL lock */
	FUNC34(ctx, cmu_type, CMU_REG26, &val);
	val = FUNC8(val, 0x0);
	FUNC35(ctx, cmu_type, CMU_REG26, val);

	/* Setup PLL loop filter */
	FUNC34(ctx, cmu_type, CMU_REG5, &val);
	val = FUNC24(val, 0x3);
	val = FUNC23(val, 0x3);
	if (cmu_type == REF_CMU || !preA3Chip)
		val = FUNC25(val, 0x7);
	else
		val = FUNC25(val, 0x4);
	FUNC35(ctx, cmu_type, CMU_REG5, val);

	/* Enable or disable manual calibration */
	FUNC34(ctx, cmu_type, CMU_REG6, &val);
	val = FUNC27(val, preA3Chip ? 0x0 : 0x2);
	val = FUNC26(val, preA3Chip ? 0x1 : 0x0);
	FUNC35(ctx, cmu_type, CMU_REG6, val);

	/* Configure lane for 20-bits */
	if (cmu_type == PHY_CMU) {
		FUNC34(ctx, cmu_type, CMU_REG9, &val);
		val = FUNC31(val,
						    CMU_REG9_WORD_LEN_20BIT);
		val = FUNC30(val,
						    CMU_REG9_WORD_LEN_20BIT);
		val = FUNC29(val, 0x1);
		if (!preA3Chip) {
			val = FUNC32(val, 0x0);
			val = FUNC28(val , 0x0);
		}
		FUNC35(ctx, cmu_type, CMU_REG9, val);

		if (!preA3Chip) {
			FUNC34(ctx, cmu_type, CMU_REG10, &val);
			val = FUNC1(val, 0x1);
			FUNC35(ctx, cmu_type, CMU_REG10, val);
		}
	}

	FUNC34(ctx, cmu_type, CMU_REG16, &val);
	val = FUNC3(val, 0x1);
	val = FUNC2(val, 0x1);
	if (cmu_type == REF_CMU || preA3Chip)
		val = FUNC4(val, 0x4);
	else
		val = FUNC4(val, 0x7);
	FUNC35(ctx, cmu_type, CMU_REG16, val);

	/* Configure for SATA */
	FUNC34(ctx, cmu_type, CMU_REG30, &val);
	val = FUNC13(val, 0x0);
	val = FUNC12(val, 0x3);
	FUNC35(ctx, cmu_type, CMU_REG30, val);

	/* Disable state machine bypass */
	FUNC35(ctx, cmu_type, CMU_REG31, 0xF);

	FUNC34(ctx, cmu_type, CMU_REG32, &val);
	val = FUNC15(val, 0x3);
	if (cmu_type == REF_CMU || preA3Chip)
		val = FUNC14(val, 0x3);
	else
		val = FUNC14(val, 0x1);
	FUNC35(ctx, cmu_type, CMU_REG32, val);

	/* Set VCO calibration threshold */
	if (cmu_type != REF_CMU && preA3Chip)
		FUNC35(ctx, cmu_type, CMU_REG34, 0x8d27);
	else
		FUNC35(ctx, cmu_type, CMU_REG34, 0x873c);

	/* Set CTLE Override and override waiting from state machine */
	FUNC35(ctx, cmu_type, CMU_REG37, 0xF00F);
}