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
struct TYPE_2__ {int ctx_valid; } ;

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
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (int) ; 
 TYPE_1__ dispc ; 
 int FUNC43 () ; 
 int FUNC44 () ; 
 scalar_t__ FUNC45 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC46(void)
{
	int i, j;

	FUNC8("dispc_save_context\n");

	FUNC39(IRQENABLE);
	FUNC39(CONTROL);
	FUNC39(CONFIG);
	FUNC39(LINE_NUMBER);
	if (FUNC45(FEAT_ALPHA_FIXED_ZORDER) ||
			FUNC45(FEAT_ALPHA_FREE_ZORDER))
		FUNC39(GLOBAL_ALPHA);
	if (FUNC45(FEAT_MGR_LCD2)) {
		FUNC39(CONTROL2);
		FUNC39(CONFIG2);
	}
	if (FUNC45(FEAT_MGR_LCD3)) {
		FUNC39(CONTROL3);
		FUNC39(CONFIG3);
	}

	for (i = 0; i < FUNC43(); i++) {
		FUNC39(FUNC6(i));
		FUNC39(FUNC42(i));
		FUNC39(FUNC38(i));
		if (i == OMAP_DSS_CHANNEL_DIGIT)
			continue;
		FUNC39(FUNC40(i));
		FUNC39(FUNC41(i));
		FUNC39(FUNC37(i));
		FUNC39(FUNC7(i));

		FUNC39(FUNC3(i));
		FUNC39(FUNC4(i));
		FUNC39(FUNC5(i));

		if (FUNC45(FEAT_CPR)) {
			FUNC39(FUNC2(i));
			FUNC39(FUNC1(i));
			FUNC39(FUNC0(i));
		}
	}

	for (i = 0; i < FUNC44(); i++) {
		FUNC39(FUNC15(i));
		FUNC39(FUNC17(i));
		FUNC39(FUNC31(i));
		FUNC39(FUNC34(i));
		FUNC39(FUNC13(i));
		FUNC39(FUNC20(i));
		FUNC39(FUNC33(i));
		FUNC39(FUNC30(i));
		if (FUNC45(FEAT_PRELOAD))
			FUNC39(FUNC32(i));
		if (i == OMAP_DSS_GFX) {
			FUNC39(FUNC36(i));
			FUNC39(FUNC35(i));
			continue;
		}
		FUNC39(FUNC21(i));
		FUNC39(FUNC29(i));
		FUNC39(FUNC9(i));
		FUNC39(FUNC10(i));

		for (j = 0; j < 8; j++)
			FUNC39(FUNC23(i, j));

		for (j = 0; j < 8; j++)
			FUNC39(FUNC25(i, j));

		for (j = 0; j < 5; j++)
			FUNC39(FUNC19(i, j));

		if (FUNC45(FEAT_FIR_COEF_V)) {
			for (j = 0; j < 8; j++)
				FUNC39(FUNC27(i, j));
		}

		if (FUNC45(FEAT_HANDLE_UV_SEPARATE)) {
			FUNC39(FUNC16(i));
			FUNC39(FUNC18(i));
			FUNC39(FUNC22(i));
			FUNC39(FUNC11(i));
			FUNC39(FUNC12(i));

			for (j = 0; j < 8; j++)
				FUNC39(FUNC24(i, j));

			for (j = 0; j < 8; j++)
				FUNC39(FUNC26(i, j));

			for (j = 0; j < 8; j++)
				FUNC39(FUNC28(i, j));
		}
		if (FUNC45(FEAT_ATTR2))
			FUNC39(FUNC14(i));
	}

	if (FUNC45(FEAT_CORE_CLK_DIV))
		FUNC39(DIVISOR);

	dispc.ctx_valid = true;

	FUNC8("context saved\n");
}