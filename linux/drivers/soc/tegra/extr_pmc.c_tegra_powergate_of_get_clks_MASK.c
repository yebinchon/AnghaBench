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
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  clk ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,unsigned int) ; 
 unsigned int FUNC6 (struct device_node*) ; 

__attribute__((used)) static int FUNC7(struct tegra_powergate *pg,
				       struct device_node *np)
{
	struct clk *clk;
	unsigned int i, count;
	int err;

	count = FUNC6(np);
	if (count == 0)
		return -ENODEV;

	pg->clks = FUNC3(count, sizeof(clk), GFP_KERNEL);
	if (!pg->clks)
		return -ENOMEM;

	for (i = 0; i < count; i++) {
		pg->clks[i] = FUNC5(np, i);
		if (FUNC0(pg->clks[i])) {
			err = FUNC1(pg->clks[i]);
			goto err;
		}
	}

	pg->num_clks = count;

	return 0;

err:
	while (i--)
		FUNC2(pg->clks[i]);

	FUNC4(pg->clks);

	return err;
}