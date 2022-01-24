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
struct TYPE_3__ {int resetMemory; scalar_t__ setAllEngOff; scalar_t__ powerMode; scalar_t__ master_clk; scalar_t__ mem_clk; scalar_t__ chip_clk; } ;
struct sm750_dev {int nocrt; scalar_t__ revid; int fb_count; void* dataflow; TYPE_2__* pdev; int /*<<< orphan*/  pnltype; TYPE_1__ initParm; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ SM750LE_REVISION_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char** g_fbmode ; 
 int g_hwcursor ; 
 int /*<<< orphan*/  sm750_24TFT ; 
 int /*<<< orphan*/  sm750_doubleTFT ; 
 int /*<<< orphan*/  sm750_dualTFT ; 
 void* sm750_dual_normal ; 
 void* sm750_dual_swap ; 
 void* sm750_simul_pri ; 
 void* sm750_simul_sec ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char**,char*) ; 

__attribute__((used)) static void FUNC5(struct sm750_dev *sm750_dev, char *src)
{
	char *opt;
	int swap;

	swap = 0;

	sm750_dev->initParm.chip_clk = 0;
	sm750_dev->initParm.mem_clk = 0;
	sm750_dev->initParm.master_clk = 0;
	sm750_dev->initParm.powerMode = 0;
	sm750_dev->initParm.setAllEngOff = 0;
	sm750_dev->initParm.resetMemory = 1;

	/* defaultly turn g_hwcursor on for both view */
	g_hwcursor = 3;

	if (!src || !*src) {
		FUNC1(&sm750_dev->pdev->dev, "no specific g_option.\n");
		goto NO_PARAM;
	}

	while ((opt = FUNC4(&src, ":")) != NULL && *opt != 0) {
		FUNC0(&sm750_dev->pdev->dev, "opt=%s\n", opt);
		FUNC0(&sm750_dev->pdev->dev, "src=%s\n", src);

		if (!FUNC3(opt, "swap", FUNC2("swap"))) {
			swap = 1;
		} else if (!FUNC3(opt, "nocrt", FUNC2("nocrt"))) {
			sm750_dev->nocrt = 1;
		} else if (!FUNC3(opt, "36bit", FUNC2("36bit"))) {
			sm750_dev->pnltype = sm750_doubleTFT;
		} else if (!FUNC3(opt, "18bit", FUNC2("18bit"))) {
			sm750_dev->pnltype = sm750_dualTFT;
		} else if (!FUNC3(opt, "24bit", FUNC2("24bit"))) {
			sm750_dev->pnltype = sm750_24TFT;
		} else if (!FUNC3(opt, "nohwc0", FUNC2("nohwc0"))) {
			g_hwcursor &= ~0x1;
		} else if (!FUNC3(opt, "nohwc1", FUNC2("nohwc1"))) {
			g_hwcursor &= ~0x2;
		} else if (!FUNC3(opt, "nohwc", FUNC2("nohwc"))) {
			g_hwcursor = 0;
		} else {
			if (!g_fbmode[0]) {
				g_fbmode[0] = opt;
				FUNC0(&sm750_dev->pdev->dev,
					 "find fbmode0 : %s\n", g_fbmode[0]);
			} else if (!g_fbmode[1]) {
				g_fbmode[1] = opt;
				FUNC0(&sm750_dev->pdev->dev,
					 "find fbmode1 : %s\n", g_fbmode[1]);
			} else {
				FUNC1(&sm750_dev->pdev->dev, "How many view you wann set?\n");
			}
		}
	}

NO_PARAM:
	if (sm750_dev->revid != SM750LE_REVISION_ID) {
		if (sm750_dev->fb_count > 1) {
			if (swap)
				sm750_dev->dataflow = sm750_dual_swap;
			else
				sm750_dev->dataflow = sm750_dual_normal;
		} else {
			if (swap)
				sm750_dev->dataflow = sm750_simul_sec;
			else
				sm750_dev->dataflow = sm750_simul_pri;
		}
	} else {
		/* SM750LE only have one crt channel */
		sm750_dev->dataflow = sm750_simul_sec;
		/* sm750le do not have complex attributes */
		sm750_dev->nocrt = 0;
	}
}