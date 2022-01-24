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
typedef  int u32 ;
struct TYPE_2__ {int* speed; int /*<<< orphan*/ * txeyetuning; int /*<<< orphan*/ * txeyedirection; int /*<<< orphan*/ * txamplitude; int /*<<< orphan*/ * txprecursor_cn2; int /*<<< orphan*/ * txpostcursor_cp1; int /*<<< orphan*/ * txprecursor_cn1; int /*<<< orphan*/ * txboostgain; } ;
struct xgene_phy_ctx {TYPE_1__ sata_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMU_REG9_WORD_LEN_20BIT ; 
 int MAX_LANE ; 
 int RXTX_REG0 ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int RXTX_REG1 ; 
 int RXTX_REG102 ; 
 int FUNC3 (int,int) ; 
 int RXTX_REG11 ; 
 int RXTX_REG114 ; 
 int FUNC4 (int,int) ; 
 int RXTX_REG12 ; 
 int RXTX_REG125 ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 
 int RXTX_REG127 ; 
 int FUNC8 (int,int) ; 
 int RXTX_REG128 ; 
 int FUNC9 (int,int) ; 
 int FUNC10 (int,int) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int RXTX_REG145 ; 
 int FUNC13 (int,int) ; 
 int FUNC14 (int,int) ; 
 int FUNC15 (int,int) ; 
 int FUNC16 (int,int) ; 
 int RXTX_REG147 ; 
 int RXTX_REG148 ; 
 int FUNC17 (int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,int) ; 
 int FUNC19 (int,int) ; 
 int FUNC20 (int,int) ; 
 int RXTX_REG2 ; 
 int RXTX_REG26 ; 
 int FUNC21 (int,int) ; 
 int FUNC22 (int,int) ; 
 int RXTX_REG28 ; 
 int FUNC23 (int,int) ; 
 int FUNC24 (int,int) ; 
 int FUNC25 (int,int) ; 
 int RXTX_REG31 ; 
 int RXTX_REG4 ; 
 int FUNC26 (int,int /*<<< orphan*/ ) ; 
 int RXTX_REG5 ; 
 int FUNC27 (int,int /*<<< orphan*/ ) ; 
 int FUNC28 (int,int /*<<< orphan*/ ) ; 
 int FUNC29 (int,int /*<<< orphan*/ ) ; 
 int RXTX_REG6 ; 
 int RXTX_REG61 ; 
 int FUNC30 (int,int) ; 
 int FUNC31 (int,int) ; 
 int FUNC32 (int,int) ; 
 int RXTX_REG62 ; 
 int FUNC33 (int,int) ; 
 int FUNC34 (int,int) ; 
 int FUNC35 (int,int) ; 
 int FUNC36 (int,int /*<<< orphan*/ ) ; 
 int FUNC37 (int,int) ; 
 int FUNC38 (int,int) ; 
 int RXTX_REG7 ; 
 int FUNC39 (int,int) ; 
 int FUNC40 (int,int /*<<< orphan*/ ) ; 
 int RXTX_REG8 ; 
 int RXTX_REG81 ; 
 int FUNC41 (int,int) ; 
 int FUNC42 (int,int) ; 
 int FUNC43 (int,int) ; 
 int FUNC44 (int,int) ; 
 int FUNC45 (int,int) ; 
 int FUNC46 (int,int) ; 
 int FUNC47 (int,int) ; 
 int FUNC48 (int,int) ; 
 int RXTX_REG96 ; 
 int FUNC49 (int,int) ; 
 int FUNC50 (int,int) ; 
 int FUNC51 (int,int) ; 
 int RXTX_REG99 ; 
 int FUNC52 (int,int) ; 
 int FUNC53 (int,int) ; 
 int FUNC54 (int,int) ; 
 scalar_t__ preA3Chip ; 
 int /*<<< orphan*/  FUNC55 (struct xgene_phy_ctx*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC56 (struct xgene_phy_ctx*,int,int,int) ; 

__attribute__((used)) static void FUNC57(struct xgene_phy_ctx *ctx)
{
	u32 val;
	u32 reg;
	int i;
	int lane;

	for (lane = 0; lane < MAX_LANE; lane++) {
		FUNC56(ctx, lane, RXTX_REG147, 0x6);

		/* Set boost control for quarter, half, and full rate */
		FUNC55(ctx, lane, RXTX_REG0, &val);
		val = FUNC1(val, 0x10);
		val = FUNC2(val, 0x10);
		val = FUNC0(val, 0x10);
		FUNC56(ctx, lane, RXTX_REG0, val);

		/* Set boost control value */
		FUNC55(ctx, lane, RXTX_REG1, &val);
		val = FUNC18(val, 0x7);
		val = FUNC17(val,
			ctx->sata_param.txboostgain[lane * 3 +
			ctx->sata_param.speed[lane]]);
		FUNC56(ctx, lane, RXTX_REG1, val);

		/* Latch VTT value based on the termination to ground and
		   enable TX FIFO */
		FUNC55(ctx, lane, RXTX_REG2, &val);
		val = FUNC24(val, 0x1);
		val = FUNC25(val, 0x1);
		val = FUNC23(val, 0x1);
		FUNC56(ctx, lane, RXTX_REG2, val);

		/* Configure Tx for 20-bits */
		FUNC55(ctx, lane, RXTX_REG4, &val);
		val = FUNC26(val, CMU_REG9_WORD_LEN_20BIT);
		FUNC56(ctx, lane, RXTX_REG4, val);

		if (!preA3Chip) {
			FUNC55(ctx, lane, RXTX_REG1, &val);
			val = FUNC20(val, 0x2);
			val = FUNC19(val, 0x2);
			FUNC56(ctx, lane, RXTX_REG1, val);
		}

		/* Set pre-emphasis first 1 and 2, and post-emphasis values */
		FUNC55(ctx, lane, RXTX_REG5, &val);
		val = FUNC27(val,
			ctx->sata_param.txprecursor_cn1[lane * 3 +
			ctx->sata_param.speed[lane]]);
		val = FUNC29(val,
			ctx->sata_param.txpostcursor_cp1[lane * 3 +
			ctx->sata_param.speed[lane]]);
		val = FUNC28(val,
			ctx->sata_param.txprecursor_cn2[lane * 3 +
			ctx->sata_param.speed[lane]]);
		FUNC56(ctx, lane, RXTX_REG5, val);

		/* Set TX amplitude value */
		FUNC55(ctx, lane, RXTX_REG6, &val);
		val = FUNC36(val,
			ctx->sata_param.txamplitude[lane * 3 +
			ctx->sata_param.speed[lane]]);
		val = FUNC37(val, 0x1);
		val = FUNC38(val, 0x0);
		val = FUNC35(val, 0x0);
		val = FUNC34(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG6, val);

		/* Configure Rx for 20-bits */
		FUNC55(ctx, lane, RXTX_REG7, &val);
		val = FUNC39(val, 0x0);
		val = FUNC40(val, CMU_REG9_WORD_LEN_20BIT);
		FUNC56(ctx, lane, RXTX_REG7, val);

		/* Set CDR and LOS values and enable Rx SSC */
		FUNC55(ctx, lane, RXTX_REG8, &val);
		val = FUNC45(val, 0x1);
		val = FUNC44(val, 0x0);
		val = FUNC48(val, 0x1);
		val = FUNC46(val, 0x0);
		val = FUNC47(val, 0x4);
		FUNC56(ctx, lane, RXTX_REG8, val);

		/* Set phase adjust upper/lower limits */
		FUNC55(ctx, lane, RXTX_REG11, &val);
		val = FUNC4(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG11, val);

		/* Enable Latch Off; disable SUMOS and Tx termination */
		FUNC55(ctx, lane, RXTX_REG12, &val);
		val = FUNC10(val, 0x1);
		val = FUNC12(val, 0x0);
		val = FUNC11(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG12, val);

		/* Set period error latch to 512T and enable BWL */
		FUNC55(ctx, lane, RXTX_REG26, &val);
		val = FUNC22(val, 0x0);
		val = FUNC21(val, 0x1);
		FUNC56(ctx, lane, RXTX_REG26, val);

		FUNC56(ctx, lane, RXTX_REG28, 0x0);

		/* Set DFE loop preset value */
		FUNC56(ctx, lane, RXTX_REG31, 0x0);

		/* Set Eye Monitor counter width to 12-bit */
		FUNC55(ctx, lane, RXTX_REG61, &val);
		val = FUNC31(val, 0x1);
		val = FUNC32(val, 0x0);
		val = FUNC30(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG61, val);

		FUNC55(ctx, lane, RXTX_REG62, &val);
		val = FUNC33(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG62, val);

		/* Set BW select tap X for DFE loop */
		for (i = 0; i < 9; i++) {
			reg = RXTX_REG81 + i * 2;
			FUNC55(ctx, lane, reg, &val);
			val = FUNC41(val, 0xe);
			val = FUNC42(val, 0xe);
			val = FUNC43(val, 0xe);
			FUNC56(ctx, lane, reg, val);
		}

		/* Set BW select tap X for frequency adjust loop */
		for (i = 0; i < 3; i++) {
			reg = RXTX_REG96 + i * 2;
			FUNC55(ctx, lane, reg, &val);
			val = FUNC49(val, 0x10);
			val = FUNC50(val, 0x10);
			val = FUNC51(val, 0x10);
			FUNC56(ctx, lane, reg, val);
		}

		/* Set BW select tap X for phase adjust loop */
		for (i = 0; i < 3; i++) {
			reg = RXTX_REG99 + i * 2;
			FUNC55(ctx, lane, reg, &val);
			val = FUNC52(val, 0x7);
			val = FUNC53(val, 0x7);
			val = FUNC54(val, 0x7);
			FUNC56(ctx, lane, reg, val);
		}

		FUNC55(ctx, lane, RXTX_REG102, &val);
		val = FUNC3(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG102, val);

		FUNC56(ctx, lane, RXTX_REG114, 0xffe0);

		FUNC55(ctx, lane, RXTX_REG125, &val);
		val = FUNC7(val,
			ctx->sata_param.txeyedirection[lane * 3 +
			ctx->sata_param.speed[lane]]);
		val = FUNC6(val,
			ctx->sata_param.txeyetuning[lane * 3 +
			ctx->sata_param.speed[lane]]);
		val = FUNC5(val, 0x1);
		FUNC56(ctx, lane, RXTX_REG125, val);

		FUNC55(ctx, lane, RXTX_REG127, &val);
		val = FUNC8(val, 0x0);
		FUNC56(ctx, lane, RXTX_REG127, val);

		FUNC55(ctx, lane, RXTX_REG128, &val);
		val = FUNC9(val, 0x3);
		FUNC56(ctx, lane, RXTX_REG128, val);

		FUNC55(ctx, lane, RXTX_REG145, &val);
		val = FUNC13(val, 0x3);
		val = FUNC16(val, 0x0);
		if (preA3Chip) {
			val = FUNC14(val, 0x1);
			val = FUNC15(val, 0x1);
		} else {
			val = FUNC14(val, 0x0);
			val = FUNC15(val, 0x0);
		}
		FUNC56(ctx, lane, RXTX_REG145, val);

		/*
		 * Set Rx LOS filter clock rate, sample rate, and threshold
		 * windows
		 */
		for (i = 0; i < 4; i++) {
			reg = RXTX_REG148 + i * 2;
			FUNC56(ctx, lane, reg, 0xFFFF);
		}
	}
}