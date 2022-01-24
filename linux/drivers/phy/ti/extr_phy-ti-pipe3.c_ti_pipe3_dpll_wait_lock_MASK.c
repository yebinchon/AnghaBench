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
struct ti_pipe3 {int /*<<< orphan*/  dev; int /*<<< orphan*/  pll_ctrl_base; } ;

/* Variables and functions */
 int EBUSY ; 
 int PLL_LOCK ; 
 int /*<<< orphan*/  PLL_LOCK_TIME ; 
 int /*<<< orphan*/  PLL_STATUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ti_pipe3 *phy)
{
	u32		val;
	unsigned long	timeout;

	timeout = jiffies + FUNC2(PLL_LOCK_TIME);
	do {
		FUNC0();
		val = FUNC3(phy->pll_ctrl_base, PLL_STATUS);
		if (val & PLL_LOCK)
			return 0;
	} while (!FUNC4(jiffies, timeout));

	FUNC1(phy->dev, "DPLL failed to lock\n");
	return -EBUSY;
}