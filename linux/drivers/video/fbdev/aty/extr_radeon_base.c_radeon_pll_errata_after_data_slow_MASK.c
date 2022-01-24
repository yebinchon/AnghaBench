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
struct radeonfb_info {int errata; } ;

/* Variables and functions */
 int CHIP_ERRATA_PLL_DELAY ; 
 int CHIP_ERRATA_R300_CG ; 
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  CLOCK_CNTL_INDEX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int PLL_WR_EN ; 
 int /*<<< orphan*/  FUNC2 (struct radeonfb_info*,int) ; 

void FUNC3(struct radeonfb_info *rinfo)
{
	if (rinfo->errata & CHIP_ERRATA_PLL_DELAY) {
		/* we can't deal with posted writes here ... */
		FUNC2(rinfo, 5);
	}
	if (rinfo->errata & CHIP_ERRATA_R300_CG) {
		u32 save, tmp;
		save = FUNC0(CLOCK_CNTL_INDEX);
		tmp = save & ~(0x3f | PLL_WR_EN);
		FUNC1(CLOCK_CNTL_INDEX, tmp);
		tmp = FUNC0(CLOCK_CNTL_DATA);
		FUNC1(CLOCK_CNTL_INDEX, save);
	}
}