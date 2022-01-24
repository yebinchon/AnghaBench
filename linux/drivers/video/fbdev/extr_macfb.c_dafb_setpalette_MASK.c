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
struct TYPE_3__ {int* red; int* green; int* blue; } ;
struct fb_info {TYPE_1__ cmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  reset; } ;

/* Variables and functions */
 TYPE_2__* dafb_cmap_regs ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int regno, unsigned int red,
			   unsigned int green, unsigned int blue,
			   struct fb_info *info)
{
	static int lastreg = -2;
	unsigned long flags;

	FUNC1(flags);

	/*
	 * fbdev will set an entire colourmap, but X won't.  Hopefully
	 * this should accommodate both of them
	 */
	if (regno != lastreg + 1) {
		int i;

		/* Stab in the dark trying to reset the CLUT pointer */
		FUNC4(0, &dafb_cmap_regs->reset);
		FUNC2();

		/* Loop until we get to the register we want */
		for (i = 0; i < regno; i++) {
			FUNC3(info->cmap.red[i] >> 8,
				     &dafb_cmap_regs->lut);
			FUNC2();
			FUNC3(info->cmap.green[i] >> 8,
				     &dafb_cmap_regs->lut);
			FUNC2();
			FUNC3(info->cmap.blue[i] >> 8,
				     &dafb_cmap_regs->lut);
			FUNC2();
		}
	}

	FUNC3(red, &dafb_cmap_regs->lut);
	FUNC2();
	FUNC3(green, &dafb_cmap_regs->lut);
	FUNC2();
	FUNC3(blue, &dafb_cmap_regs->lut);

	FUNC0(flags);
	lastreg = regno;
	return 0;
}