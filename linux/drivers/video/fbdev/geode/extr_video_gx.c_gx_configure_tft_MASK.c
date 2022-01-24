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
struct gxfb_par {int dummy; } ;
struct TYPE_2__ {unsigned long yres; int sync; } ;
struct fb_info {TYPE_1__ var; struct gxfb_par* par; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int /*<<< orphan*/  FP_DFC ; 
 unsigned long FP_DFC_NFI ; 
 int /*<<< orphan*/  FP_PM ; 
 unsigned long FP_PM_P ; 
 int /*<<< orphan*/  FP_PT1 ; 
 unsigned long FP_PT1_VSIZE_MASK ; 
 unsigned long FP_PT1_VSIZE_SHIFT ; 
 int /*<<< orphan*/  FP_PT2 ; 
 unsigned long FP_PT2_HSP ; 
 unsigned long FP_PT2_VSP ; 
 int /*<<< orphan*/  MSR_GX_MSR_PADSEL ; 
 unsigned long MSR_GX_MSR_PADSEL_MASK ; 
 unsigned long MSR_GX_MSR_PADSEL_TFT ; 
 int /*<<< orphan*/  VP_DCFG ; 
 unsigned long VP_DCFG_FP_DATA_EN ; 
 unsigned long VP_DCFG_FP_PWR_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (struct gxfb_par*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct gxfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gxfb_par*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct gxfb_par*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct fb_info *info)
{
	struct gxfb_par *par = info->par;
	unsigned long val;
	unsigned long fp;

	/* Set up the DF pad select MSR */

	FUNC0(MSR_GX_MSR_PADSEL, val);
	val &= ~MSR_GX_MSR_PADSEL_MASK;
	val |= MSR_GX_MSR_PADSEL_TFT;
	FUNC5(MSR_GX_MSR_PADSEL, val);

	/* Turn off the panel */

	fp = FUNC1(par, FP_PM);
	fp &= ~FP_PM_P;
	FUNC3(par, FP_PM, fp);

	/* Set timing 1 */

	fp = FUNC1(par, FP_PT1);
	fp &= FP_PT1_VSIZE_MASK;
	fp |= info->var.yres << FP_PT1_VSIZE_SHIFT;
	FUNC3(par, FP_PT1, fp);

	/* Timing 2 */
	/* Set bits that are always on for TFT */

	fp = 0x0F100000;

	/* Configure sync polarity */

	if (!(info->var.sync & FB_SYNC_VERT_HIGH_ACT))
		fp |= FP_PT2_VSP;

	if (!(info->var.sync & FB_SYNC_HOR_HIGH_ACT))
		fp |= FP_PT2_HSP;

	FUNC3(par, FP_PT2, fp);

	/*  Set the dither control */
	FUNC3(par, FP_DFC, FP_DFC_NFI);

	/* Enable the FP data and power (in case the BIOS didn't) */

	fp = FUNC2(par, VP_DCFG);
	fp |= VP_DCFG_FP_PWR_EN | VP_DCFG_FP_DATA_EN;
	FUNC4(par, VP_DCFG, fp);

	/* Unblank the panel */

	fp = FUNC1(par, FP_PM);
	fp |= FP_PM_P;
	FUNC3(par, FP_PM, fp);
}