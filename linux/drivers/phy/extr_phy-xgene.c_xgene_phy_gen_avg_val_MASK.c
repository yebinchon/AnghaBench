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
struct xgene_phy_ctx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXTX_REG12 ; 
 int /*<<< orphan*/  RXTX_REG121 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RXTX_REG127 ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXTX_REG128 ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXTX_REG129 ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXTX_REG12_RX_DET_TERM_ENABLE_MASK ; 
 int FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXTX_REG130 ; 
 int FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXTX_REG14 ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int) ; 
 int /*<<< orphan*/  RXTX_REG21 ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 int /*<<< orphan*/  RXTX_REG22 ; 
 int FUNC16 (int) ; 
 int FUNC17 (int) ; 
 int FUNC18 (int) ; 
 int /*<<< orphan*/  RXTX_REG23 ; 
 int FUNC19 (int) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  RXTX_REG24 ; 
 int FUNC21 (int) ; 
 int FUNC22 (int) ; 
 int /*<<< orphan*/  RXTX_REG28 ; 
 int /*<<< orphan*/  RXTX_REG31 ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC26 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct xgene_phy_ctx*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC28 (struct xgene_phy_ctx*,int) ; 
 int /*<<< orphan*/  FUNC29 (int,int) ; 
 int /*<<< orphan*/  FUNC30 (struct xgene_phy_ctx*,int) ; 

__attribute__((used)) static void FUNC31(struct xgene_phy_ctx *ctx, int lane)
{
	int max_loop = 10;
	int avg_loop = 0;
	int lat_do = 0, lat_xo = 0, lat_eo = 0, lat_so = 0;
	int lat_de = 0, lat_xe = 0, lat_ee = 0, lat_se = 0;
	int sum_cal = 0;
	int lat_do_itr, lat_xo_itr, lat_eo_itr, lat_so_itr;
	int lat_de_itr, lat_xe_itr, lat_ee_itr, lat_se_itr;
	int sum_cal_itr;
	int fail_even;
	int fail_odd;
	u32 val;

	FUNC23(ctx->dev, "Generating avg calibration value for lane %d\n",
		lane);

	/* Enable RX Hi-Z termination */
	FUNC26(ctx, lane, RXTX_REG12,
			RXTX_REG12_RX_DET_TERM_ENABLE_MASK);
	/* Turn off DFE */
	FUNC27(ctx, lane, RXTX_REG28, 0x0000);
	/* DFE Presets to zero */
	FUNC27(ctx, lane, RXTX_REG31, 0x0000);

	/*
	 * Receiver Offset Calibration:
	 * Calibrate the receiver signal path offset in two steps - summar
	 * and latch calibration.
	 * Runs the "Receiver Offset Calibration multiple times to determine
	 * the average value to use.
	 */
	while (avg_loop < max_loop) {
		/* Start the calibration */
		FUNC28(ctx, lane);

		FUNC25(ctx, lane, RXTX_REG21, &val);
		lat_do_itr = FUNC13(val);
		lat_xo_itr = FUNC15(val);
		fail_odd = FUNC14(val);

		FUNC25(ctx, lane, RXTX_REG22, &val);
		lat_eo_itr = FUNC16(val);
		lat_so_itr = FUNC18(val);
		fail_even = FUNC17(val);

		FUNC25(ctx, lane, RXTX_REG23, &val);
		lat_de_itr = FUNC19(val);
		lat_xe_itr = FUNC20(val);

		FUNC25(ctx, lane, RXTX_REG24, &val);
		lat_ee_itr = FUNC21(val);
		lat_se_itr = FUNC22(val);

		FUNC25(ctx, lane, RXTX_REG121, &val);
		sum_cal_itr = FUNC0(val);

		/* Check for failure. If passed, sum them for averaging */
		if ((fail_even == 0 || fail_even == 1) &&
		    (fail_odd == 0 || fail_odd == 1)) {
			lat_do += lat_do_itr;
			lat_xo += lat_xo_itr;
			lat_eo += lat_eo_itr;
			lat_so += lat_so_itr;
			lat_de += lat_de_itr;
			lat_xe += lat_xe_itr;
			lat_ee += lat_ee_itr;
			lat_se += lat_se_itr;
			sum_cal += sum_cal_itr;

			FUNC23(ctx->dev, "Iteration %d:\n", avg_loop);
			FUNC23(ctx->dev, "DO 0x%x XO 0x%x EO 0x%x SO 0x%x\n",
				lat_do_itr, lat_xo_itr, lat_eo_itr,
				lat_so_itr);
			FUNC23(ctx->dev, "DE 0x%x XE 0x%x EE 0x%x SE 0x%x\n",
				lat_de_itr, lat_xe_itr, lat_ee_itr,
				lat_se_itr);
			FUNC23(ctx->dev, "SUM 0x%x\n", sum_cal_itr);
			++avg_loop;
		} else {
			FUNC24(ctx->dev,
				"Receiver calibration failed at %d loop\n",
				avg_loop);
		}
		FUNC30(ctx, lane);
	}

	/* Update latch manual calibration with average value */
	FUNC25(ctx, lane, RXTX_REG127, &val);
	val = FUNC1(val,
		FUNC29(lat_do, max_loop));
	val = FUNC3(val,
		FUNC29(lat_xo, max_loop));
	FUNC27(ctx, lane, RXTX_REG127, val);

	FUNC25(ctx, lane, RXTX_REG128, &val);
	val = FUNC4(val,
		FUNC29(lat_eo, max_loop));
	val = FUNC5(val,
		FUNC29(lat_so, max_loop));
	FUNC27(ctx, lane, RXTX_REG128, val);

	FUNC25(ctx, lane, RXTX_REG129, &val);
	val = FUNC6(val,
		FUNC29(lat_de, max_loop));
	val = FUNC7(val,
		FUNC29(lat_xe, max_loop));
	FUNC27(ctx, lane, RXTX_REG129, val);

	FUNC25(ctx, lane, RXTX_REG130, &val);
	val = FUNC9(val,
		FUNC29(lat_ee, max_loop));
	val = FUNC10(val,
		FUNC29(lat_se, max_loop));
	FUNC27(ctx, lane, RXTX_REG130, val);

	/* Update SUMMER calibration with average value */
	FUNC25(ctx, lane, RXTX_REG14, &val);
	val = FUNC11(val,
		FUNC29(sum_cal, max_loop));
	FUNC27(ctx, lane, RXTX_REG14, val);

	FUNC23(ctx->dev, "Average Value:\n");
	FUNC23(ctx->dev, "DO 0x%x XO 0x%x EO 0x%x SO 0x%x\n",
		 FUNC29(lat_do, max_loop),
		 FUNC29(lat_xo, max_loop),
		 FUNC29(lat_eo, max_loop),
		 FUNC29(lat_so, max_loop));
	FUNC23(ctx->dev, "DE 0x%x XE 0x%x EE 0x%x SE 0x%x\n",
		 FUNC29(lat_de, max_loop),
		 FUNC29(lat_xe, max_loop),
		 FUNC29(lat_ee, max_loop),
		 FUNC29(lat_se, max_loop));
	FUNC23(ctx->dev, "SUM 0x%x\n",
		FUNC29(sum_cal, max_loop));

	FUNC25(ctx, lane, RXTX_REG14, &val);
	val = FUNC12(val, 0x1);
	FUNC27(ctx, lane, RXTX_REG14, val);
	FUNC23(ctx->dev, "Enable Manual Summer calibration\n");

	FUNC25(ctx, lane, RXTX_REG127, &val);
	val = FUNC2(val, 0x1);
	FUNC23(ctx->dev, "Enable Manual Latch calibration\n");
	FUNC27(ctx, lane, RXTX_REG127, val);

	/* Disable RX Hi-Z termination */
	FUNC25(ctx, lane, RXTX_REG12, &val);
	val = FUNC8(val, 0);
	FUNC27(ctx, lane, RXTX_REG12, val);
	/* Turn on DFE */
	FUNC27(ctx, lane, RXTX_REG28, 0x0007);
	/* Set DFE preset */
	FUNC27(ctx, lane, RXTX_REG31, 0x7e00);
}