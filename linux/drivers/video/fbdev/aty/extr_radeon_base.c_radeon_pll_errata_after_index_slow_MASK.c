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
struct radeonfb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_CNTL_DATA ; 
 int /*<<< orphan*/  CRTC_GEN_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct radeonfb_info *rinfo)
{
	/* Called if (rinfo->errata & CHIP_ERRATA_PLL_DUMMYREADS) is set */
	(void)FUNC0(CLOCK_CNTL_DATA);
	(void)FUNC0(CRTC_GEN_CNTL);
}