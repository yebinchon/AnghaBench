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
struct tegra_pmc {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (struct tegra_pmc*,unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tegra_pmc *pmc, unsigned long offset,
			     u32 mask, u32 val, unsigned long timeout)
{
	u32 value;

	timeout = jiffies + FUNC0(timeout);

	while (FUNC2(timeout, jiffies)) {
		value = FUNC1(pmc, offset);
		if ((value & mask) == val)
			return 0;

		FUNC3(250, 1000);
	}

	return -ETIMEDOUT;
}