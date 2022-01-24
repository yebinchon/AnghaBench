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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_GLCP_DOTPLL ; 
 scalar_t__ MSR_GLCP_DOTPLL_BYPASS ; 
 scalar_t__ MSR_GLCP_DOTPLL_DOTRESET ; 
 scalar_t__ MSR_GLCP_DOTPLL_HALFPIX ; 
 scalar_t__ MSR_GLCP_DOTPLL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(u32 pllval)
{
	u32 dotpll_lo, dotpll_hi;
	int i;

	FUNC0(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);

	if ((dotpll_lo & MSR_GLCP_DOTPLL_LOCK) && (dotpll_hi == pllval))
		return;

	dotpll_hi = pllval;
	dotpll_lo &= ~(MSR_GLCP_DOTPLL_BYPASS | MSR_GLCP_DOTPLL_HALFPIX);
	dotpll_lo |= MSR_GLCP_DOTPLL_DOTRESET;

	FUNC2(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);

	/* Wait 100us for the PLL to lock */

	FUNC1(100);

	/* Now, loop for the lock bit */

	for (i = 0; i < 1000; i++) {
		FUNC0(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);
		if (dotpll_lo & MSR_GLCP_DOTPLL_LOCK)
			break;
	}

	/* Clear the reset bit */

	dotpll_lo &= ~MSR_GLCP_DOTPLL_DOTRESET;
	FUNC2(MSR_GLCP_DOTPLL, dotpll_lo, dotpll_hi);
}