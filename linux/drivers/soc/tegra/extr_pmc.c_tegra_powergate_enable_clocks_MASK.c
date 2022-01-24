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
struct tegra_powergate {unsigned int num_clks; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tegra_powergate *pg)
{
	unsigned int i;
	int err;

	for (i = 0; i < pg->num_clks; i++) {
		err = FUNC1(pg->clks[i]);
		if (err)
			goto out;
	}

	return 0;

out:
	while (i--)
		FUNC0(pg->clks[i]);

	return err;
}