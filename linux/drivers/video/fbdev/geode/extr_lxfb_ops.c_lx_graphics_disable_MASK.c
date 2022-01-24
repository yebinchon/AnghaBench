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
struct lxfb_par {int dummy; } ;
struct fb_info {struct lxfb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_CLR_KEY ; 
 unsigned int DC_CLR_KEY_CLR_KEY_EN ; 
 int /*<<< orphan*/  DC_DISPLAY_CFG ; 
 unsigned int DC_DISPLAY_CFG_TGEN ; 
 int /*<<< orphan*/  DC_GENERAL_CFG ; 
 unsigned int DC_GENERAL_CFG_CMPE ; 
 unsigned int DC_GENERAL_CFG_DECE ; 
 unsigned int DC_GENERAL_CFG_DFLE ; 
 unsigned int DC_GENERAL_CFG_VGAE ; 
 unsigned int DC_GENERAL_CFG_VIDE ; 
 int /*<<< orphan*/  DC_GENLK_CTL ; 
 unsigned int DC_GENLK_CTL_GENLK_EN ; 
 int /*<<< orphan*/  DC_IRQ ; 
 unsigned int DC_IRQ_MASK ; 
 unsigned int DC_IRQ_STATUS ; 
 unsigned int DC_IRQ_VIP_VSYNC_IRQ_STATUS ; 
 unsigned int DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK ; 
 int /*<<< orphan*/  FP_PM ; 
 int FP_PM_P ; 
 int /*<<< orphan*/  GP_BLT_STATUS ; 
 unsigned int GP_BLT_STATUS_CE ; 
 unsigned int GP_BLT_STATUS_PB ; 
 int /*<<< orphan*/  VP_A1T ; 
 int /*<<< orphan*/  VP_A2T ; 
 int /*<<< orphan*/  VP_A3T ; 
 int /*<<< orphan*/  VP_DCFG ; 
 unsigned int VP_DCFG_CRT_EN ; 
 unsigned int VP_DCFG_DAC_BL_EN ; 
 unsigned int VP_DCFG_HSYNC_EN ; 
 unsigned int VP_DCFG_VSYNC_EN ; 
 int /*<<< orphan*/  VP_MISC ; 
 unsigned int VP_MISC_DACPWRDN ; 
 int /*<<< orphan*/  VP_VCFG ; 
 unsigned int VP_VCFG_VID_EN ; 
 unsigned int FUNC0 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct lxfb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct lxfb_par*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct lxfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lxfb_par*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct fb_info *info)
{
	struct lxfb_par *par = info->par;
	unsigned int val, gcfg;

	/* Note:  This assumes that the video is in a quitet state */

	FUNC7(par, VP_A1T, 0);
	FUNC7(par, VP_A2T, 0);
	FUNC7(par, VP_A3T, 0);

	/* Turn off the VGA and video enable */
	val = FUNC0(par, DC_GENERAL_CFG) & ~(DC_GENERAL_CFG_VGAE |
			DC_GENERAL_CFG_VIDE);

	FUNC5(par, DC_GENERAL_CFG, val);

	val = FUNC3(par, VP_VCFG) & ~VP_VCFG_VID_EN;
	FUNC7(par, VP_VCFG, val);

	FUNC5(par, DC_IRQ, DC_IRQ_MASK | DC_IRQ_VIP_VSYNC_LOSS_IRQ_MASK |
			DC_IRQ_STATUS | DC_IRQ_VIP_VSYNC_IRQ_STATUS);

	val = FUNC0(par, DC_GENLK_CTL) & ~DC_GENLK_CTL_GENLK_EN;
	FUNC5(par, DC_GENLK_CTL, val);

	val = FUNC0(par, DC_CLR_KEY);
	FUNC5(par, DC_CLR_KEY, val & ~DC_CLR_KEY_CLR_KEY_EN);

	/* turn off the panel */
	FUNC6(par, FP_PM, FUNC1(par, FP_PM) & ~FP_PM_P);

	val = FUNC3(par, VP_MISC) | VP_MISC_DACPWRDN;
	FUNC7(par, VP_MISC, val);

	/* Turn off the display */

	val = FUNC3(par, VP_DCFG);
	FUNC7(par, VP_DCFG, val & ~(VP_DCFG_CRT_EN | VP_DCFG_HSYNC_EN |
			VP_DCFG_VSYNC_EN | VP_DCFG_DAC_BL_EN));

	gcfg = FUNC0(par, DC_GENERAL_CFG);
	gcfg &= ~(DC_GENERAL_CFG_CMPE | DC_GENERAL_CFG_DECE);
	FUNC5(par, DC_GENERAL_CFG, gcfg);

	/* Turn off the TGEN */
	val = FUNC0(par, DC_DISPLAY_CFG);
	val &= ~DC_DISPLAY_CFG_TGEN;
	FUNC5(par, DC_DISPLAY_CFG, val);

	/* Wait 1000 usecs to ensure that the TGEN is clear */
	FUNC4(1000);

	/* Turn off the FIFO loader */

	gcfg &= ~DC_GENERAL_CFG_DFLE;
	FUNC5(par, DC_GENERAL_CFG, gcfg);

	/* Lastly, wait for the GP to go idle */

	do {
		val = FUNC2(par, GP_BLT_STATUS);
	} while ((val & GP_BLT_STATUS_PB) || !(val & GP_BLT_STATUS_CE));
}