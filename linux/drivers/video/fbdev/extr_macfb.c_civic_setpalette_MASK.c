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
struct fb_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lut; int /*<<< orphan*/  status2; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 TYPE_1__* civic_cmap_regs ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int regno, unsigned int red,
			    unsigned int green, unsigned int blue,
			    struct fb_info *info)
{
	unsigned long flags;
	int clut_status;
	
	FUNC1(flags);

	/* Set the register address */
	FUNC4(regno, &civic_cmap_regs->addr);
	FUNC2();

	/*
	 * Grab a status word and do some checking;
	 * Then finally write the clut!
	 */
	clut_status =  FUNC3(&civic_cmap_regs->status2);

	if ((clut_status & 0x0008) == 0)
	{
#if 0
		if ((clut_status & 0x000D) != 0)
		{
			nubus_writeb(0x00, &civic_cmap_regs->lut);
			nop();
			nubus_writeb(0x00, &civic_cmap_regs->lut);
			nop();
		}
#endif

		FUNC4(red, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(green, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(blue, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(0x00, &civic_cmap_regs->lut);
	}
	else
	{
		unsigned char junk;

		junk = FUNC3(&civic_cmap_regs->lut);
		FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut);
		FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut);
		FUNC2();
		junk = FUNC3(&civic_cmap_regs->lut);
		FUNC2();

		if ((clut_status & 0x000D) != 0)
		{
			FUNC4(0x00, &civic_cmap_regs->lut);
			FUNC2();
			FUNC4(0x00, &civic_cmap_regs->lut);
			FUNC2();
		}

		FUNC4(red, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(green, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(blue, &civic_cmap_regs->lut);
		FUNC2();
		FUNC4(junk, &civic_cmap_regs->lut);
	}

	FUNC0(flags);
	return 0;
}