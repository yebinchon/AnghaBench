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
typedef  int /*<<< orphan*/  u_long ;
struct pxafb_info {int lccr0; int reg_lccr0; int reg_lccr3; int reg_lccr4; int lccr4; int reg_lccr1; int reg_lccr2; int* fdadr; } ;
struct fb_var_screeninfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C_REENABLE ; 
 int /*<<< orphan*/  FDADR0 ; 
 int /*<<< orphan*/  FDADR1 ; 
 int /*<<< orphan*/  LCCR0 ; 
 int LCCR0_BM ; 
 int LCCR0_EFM ; 
 int LCCR0_IUM ; 
 int LCCR0_LCDT ; 
 int LCCR0_LDM ; 
 int LCCR0_OUM ; 
 int LCCR0_QDM ; 
 int LCCR0_SDS ; 
 int LCCR0_SFM ; 
 int /*<<< orphan*/  LCCR1 ; 
 int /*<<< orphan*/  LCCR2 ; 
 int /*<<< orphan*/  LCCR3 ; 
 int /*<<< orphan*/  LCCR4 ; 
 int LCCR4_PAL_FOR_MASK ; 
 int FUNC0 (struct pxafb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxafb_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxafb_info*,struct fb_var_screeninfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pxafb_info*,struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct pxafb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC8(struct fb_var_screeninfo *var,
			      struct pxafb_info *fbi)
{
	u_long flags;

	/* Update shadow copy atomically */
	FUNC2(flags);

#ifdef CONFIG_FB_PXA_SMARTPANEL
	if (fbi->lccr0 & LCCR0_LCDT)
		setup_smart_timing(fbi, var);
	else
#endif
		FUNC6(fbi, var);

	FUNC5(fbi, var, 0);

	fbi->reg_lccr0 = fbi->lccr0 |
		(LCCR0_LDM | LCCR0_SFM | LCCR0_IUM | LCCR0_EFM |
		 LCCR0_QDM | LCCR0_BM  | LCCR0_OUM);

	fbi->reg_lccr3 |= FUNC4(var);

	fbi->reg_lccr4 = FUNC0(fbi, LCCR4) & ~LCCR4_PAL_FOR_MASK;
	fbi->reg_lccr4 |= (fbi->lccr4 & LCCR4_PAL_FOR_MASK);
	FUNC1(flags);

	/*
	 * Only update the registers if the controller is enabled
	 * and something has changed.
	 */
	if ((FUNC0(fbi, LCCR0) != fbi->reg_lccr0) ||
	    (FUNC0(fbi, LCCR1) != fbi->reg_lccr1) ||
	    (FUNC0(fbi, LCCR2) != fbi->reg_lccr2) ||
	    (FUNC0(fbi, LCCR3) != fbi->reg_lccr3) ||
	    (FUNC0(fbi, LCCR4) != fbi->reg_lccr4) ||
	    (FUNC0(fbi, FDADR0) != fbi->fdadr[0]) ||
	    ((fbi->lccr0 & LCCR0_SDS) &&
	    (FUNC0(fbi, FDADR1) != fbi->fdadr[1])))
		FUNC3(fbi, C_REENABLE);

	return 0;
}