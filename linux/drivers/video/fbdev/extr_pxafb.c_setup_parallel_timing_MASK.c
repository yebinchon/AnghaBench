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
struct pxafb_info {int lccr0; int reg_lccr3; int lccr3; scalar_t__ reg_lccr2; scalar_t__ reg_lccr1; } ;
struct fb_var_screeninfo {unsigned int yres; int sync; int /*<<< orphan*/  lower_margin; int /*<<< orphan*/  upper_margin; int /*<<< orphan*/  vsync_len; int /*<<< orphan*/  right_margin; int /*<<< orphan*/  left_margin; int /*<<< orphan*/  hsync_len; int /*<<< orphan*/  xres; int /*<<< orphan*/  pixclock; } ;

/* Variables and functions */
 int FB_SYNC_HOR_HIGH_ACT ; 
 int FB_SYNC_VERT_HIGH_ACT ; 
 int LCCR0_Dual ; 
 int LCCR0_SDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int LCCR3_HorSnchH ; 
 int LCCR3_HorSnchL ; 
 int FUNC8 (unsigned int) ; 
 int LCCR3_VrtSnchH ; 
 int LCCR3_VrtSnchL ; 
 unsigned int FUNC9 (struct pxafb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pxafb_info*,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct pxafb_info *fbi,
				  struct fb_var_screeninfo *var)
{
	unsigned int lines_per_panel, pcd = FUNC9(fbi, var->pixclock);

	fbi->reg_lccr1 =
		FUNC1(var->xres) +
		FUNC3(var->hsync_len) +
		FUNC0(var->left_margin) +
		FUNC2(var->right_margin);

	/*
	 * If we have a dual scan LCD, we need to halve
	 * the YRES parameter.
	 */
	lines_per_panel = var->yres;
	if ((fbi->lccr0 & LCCR0_SDS) == LCCR0_Dual)
		lines_per_panel /= 2;

	fbi->reg_lccr2 =
		FUNC5(lines_per_panel) +
		FUNC7(var->vsync_len) +
		FUNC4(var->upper_margin) +
		FUNC6(var->lower_margin);

	fbi->reg_lccr3 = fbi->lccr3 |
		(var->sync & FB_SYNC_HOR_HIGH_ACT ?
		 LCCR3_HorSnchH : LCCR3_HorSnchL) |
		(var->sync & FB_SYNC_VERT_HIGH_ACT ?
		 LCCR3_VrtSnchH : LCCR3_VrtSnchL);

	if (pcd) {
		fbi->reg_lccr3 |= FUNC8(pcd);
		FUNC10(fbi, pcd);
	}
}