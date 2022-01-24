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
struct TYPE_2__ {int /*<<< orphan*/  ctx_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG ; 
 int /*<<< orphan*/  CONFIG2 ; 
 int /*<<< orphan*/  CONFIG3 ; 
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  CONTROL2 ; 
 int /*<<< orphan*/  CONTROL3 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  DISPC_IRQ_SYNC_LOST_DIGIT ; 
 int /*<<< orphan*/  DIVISOR ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FEAT_ALPHA_FIXED_ZORDER ; 
 int /*<<< orphan*/  FEAT_ALPHA_FREE_ZORDER ; 
 int /*<<< orphan*/  FEAT_ATTR2 ; 
 int /*<<< orphan*/  FEAT_CORE_CLK_DIV ; 
 int /*<<< orphan*/  FEAT_CPR ; 
 int /*<<< orphan*/  FEAT_FIR_COEF_V ; 
 int /*<<< orphan*/  FEAT_HANDLE_UV_SEPARATE ; 
 int /*<<< orphan*/  FEAT_MGR_LCD2 ; 
 int /*<<< orphan*/  FEAT_MGR_LCD3 ; 
 int /*<<< orphan*/  FEAT_PRELOAD ; 
 int /*<<< orphan*/  GLOBAL_ALPHA ; 
 int /*<<< orphan*/  IRQENABLE ; 
 int /*<<< orphan*/  LINE_NUMBER ; 
 int OMAP_DSS_CHANNEL_DIGIT ; 
 int OMAP_DSS_GFX ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int,int) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int) ; 
 int /*<<< orphan*/  FUNC26 (int,int) ; 
 int /*<<< orphan*/  FUNC27 (int,int) ; 
 int /*<<< orphan*/  FUNC28 (int,int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (int) ; 
 TYPE_1__ dispc ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ) ; 
 int FUNC44 () ; 
 int FUNC45 () ; 
 scalar_t__ FUNC46 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC47(void)
{
	int i, j;

	FUNC8("dispc_restore_context\n");

	if (!dispc.ctx_valid)
		return;

	/*RR(IRQENABLE);*/
	/*RR(CONTROL);*/
	FUNC38(CONFIG);
	FUNC38(LINE_NUMBER);
	if (FUNC46(FEAT_ALPHA_FIXED_ZORDER) ||
			FUNC46(FEAT_ALPHA_FREE_ZORDER))
		FUNC38(GLOBAL_ALPHA);
	if (FUNC46(FEAT_MGR_LCD2))
		FUNC38(CONFIG2);
	if (FUNC46(FEAT_MGR_LCD3))
		FUNC38(CONFIG3);

	for (i = 0; i < FUNC44(); i++) {
		FUNC38(FUNC6(i));
		FUNC38(FUNC42(i));
		FUNC38(FUNC39(i));
		if (i == OMAP_DSS_CHANNEL_DIGIT)
			continue;
		FUNC38(FUNC40(i));
		FUNC38(FUNC41(i));
		FUNC38(FUNC37(i));
		FUNC38(FUNC7(i));

		FUNC38(FUNC3(i));
		FUNC38(FUNC4(i));
		FUNC38(FUNC5(i));

		if (FUNC46(FEAT_CPR)) {
			FUNC38(FUNC2(i));
			FUNC38(FUNC1(i));
			FUNC38(FUNC0(i));
		}
	}

	for (i = 0; i < FUNC45(); i++) {
		FUNC38(FUNC15(i));
		FUNC38(FUNC17(i));
		FUNC38(FUNC31(i));
		FUNC38(FUNC34(i));
		FUNC38(FUNC13(i));
		FUNC38(FUNC20(i));
		FUNC38(FUNC33(i));
		FUNC38(FUNC30(i));
		if (FUNC46(FEAT_PRELOAD))
			FUNC38(FUNC32(i));
		if (i == OMAP_DSS_GFX) {
			FUNC38(FUNC36(i));
			FUNC38(FUNC35(i));
			continue;
		}
		FUNC38(FUNC21(i));
		FUNC38(FUNC29(i));
		FUNC38(FUNC9(i));
		FUNC38(FUNC10(i));

		for (j = 0; j < 8; j++)
			FUNC38(FUNC23(i, j));

		for (j = 0; j < 8; j++)
			FUNC38(FUNC25(i, j));

		for (j = 0; j < 5; j++)
			FUNC38(FUNC19(i, j));

		if (FUNC46(FEAT_FIR_COEF_V)) {
			for (j = 0; j < 8; j++)
				FUNC38(FUNC27(i, j));
		}

		if (FUNC46(FEAT_HANDLE_UV_SEPARATE)) {
			FUNC38(FUNC16(i));
			FUNC38(FUNC18(i));
			FUNC38(FUNC22(i));
			FUNC38(FUNC11(i));
			FUNC38(FUNC12(i));

			for (j = 0; j < 8; j++)
				FUNC38(FUNC24(i, j));

			for (j = 0; j < 8; j++)
				FUNC38(FUNC26(i, j));

			for (j = 0; j < 8; j++)
				FUNC38(FUNC28(i, j));
		}
		if (FUNC46(FEAT_ATTR2))
			FUNC38(FUNC14(i));
	}

	if (FUNC46(FEAT_CORE_CLK_DIV))
		FUNC38(DIVISOR);

	/* enable last, because LCD & DIGIT enable are here */
	FUNC38(CONTROL);
	if (FUNC46(FEAT_MGR_LCD2))
		FUNC38(CONTROL2);
	if (FUNC46(FEAT_MGR_LCD3))
		FUNC38(CONTROL3);
	/* clear spurious SYNC_LOST_DIGIT interrupts */
	FUNC43(DISPC_IRQ_SYNC_LOST_DIGIT);

	/*
	 * enable last so IRQs won't trigger before
	 * the context is fully restored
	 */
	FUNC38(IRQENABLE);

	FUNC8("context restored\n");
}