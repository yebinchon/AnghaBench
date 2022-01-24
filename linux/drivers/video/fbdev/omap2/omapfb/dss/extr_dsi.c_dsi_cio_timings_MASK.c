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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_DSIPHY_CFG0 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG1 ; 
 int /*<<< orphan*/  DSI_DSIPHY_CFG2 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FEAT_DSI_PHY_DCC ; 
 int FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int) ; 

__attribute__((used)) static void FUNC7(struct platform_device *dsidev)
{
	u32 r;
	u32 ths_prepare, ths_prepare_ths_zero, ths_trail, ths_exit;
	u32 tlpx_half, tclk_trail, tclk_zero;
	u32 tclk_prepare;

	/* calculate timings */

	/* 1 * DDR_CLK = 2 * UI */

	/* min 40ns + 4*UI	max 85ns + 6*UI */
	ths_prepare = FUNC6(dsidev, 70) + 2;

	/* min 145ns + 10*UI */
	ths_prepare_ths_zero = FUNC6(dsidev, 175) + 2;

	/* min max(8*UI, 60ns+4*UI) */
	ths_trail = FUNC6(dsidev, 60) + 5;

	/* min 100ns */
	ths_exit = FUNC6(dsidev, 145);

	/* tlpx min 50n */
	tlpx_half = FUNC6(dsidev, 25);

	/* min 60ns */
	tclk_trail = FUNC6(dsidev, 60) + 2;

	/* min 38ns, max 95ns */
	tclk_prepare = FUNC6(dsidev, 65);

	/* min tclk-prepare + tclk-zero = 300ns */
	tclk_zero = FUNC6(dsidev, 260);

	FUNC0("ths_prepare %u (%uns), ths_prepare_ths_zero %u (%uns)\n",
		ths_prepare, FUNC2(dsidev, ths_prepare),
		ths_prepare_ths_zero, FUNC2(dsidev, ths_prepare_ths_zero));
	FUNC0("ths_trail %u (%uns), ths_exit %u (%uns)\n",
			ths_trail, FUNC2(dsidev, ths_trail),
			ths_exit, FUNC2(dsidev, ths_exit));

	FUNC0("tlpx_half %u (%uns), tclk_trail %u (%uns), "
			"tclk_zero %u (%uns)\n",
			tlpx_half, FUNC2(dsidev, tlpx_half),
			tclk_trail, FUNC2(dsidev, tclk_trail),
			tclk_zero, FUNC2(dsidev, tclk_zero));
	FUNC0("tclk_prepare %u (%uns)\n",
			tclk_prepare, FUNC2(dsidev, tclk_prepare));

	/* program timings */

	r = FUNC3(dsidev, DSI_DSIPHY_CFG0);
	r = FUNC1(r, ths_prepare, 31, 24);
	r = FUNC1(r, ths_prepare_ths_zero, 23, 16);
	r = FUNC1(r, ths_trail, 15, 8);
	r = FUNC1(r, ths_exit, 7, 0);
	FUNC4(dsidev, DSI_DSIPHY_CFG0, r);

	r = FUNC3(dsidev, DSI_DSIPHY_CFG1);
	r = FUNC1(r, tlpx_half, 20, 16);
	r = FUNC1(r, tclk_trail, 15, 8);
	r = FUNC1(r, tclk_zero, 7, 0);

	if (FUNC5(FEAT_DSI_PHY_DCC)) {
		r = FUNC1(r, 0, 21, 21);	/* DCCEN = disable */
		r = FUNC1(r, 1, 22, 22);	/* CLKINP_DIVBY2EN = enable */
		r = FUNC1(r, 1, 23, 23);	/* CLKINP_SEL = enable */
	}

	FUNC4(dsidev, DSI_DSIPHY_CFG1, r);

	r = FUNC3(dsidev, DSI_DSIPHY_CFG2);
	r = FUNC1(r, tclk_prepare, 7, 0);
	FUNC4(dsidev, DSI_DSIPHY_CFG2, r);
}