#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_powergate {unsigned int id; int num_clks; TYPE_1__* pmc; struct reset_control* reset; struct clk** clks; } ;
struct reset_control {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_powergate*) ; 
 struct tegra_powergate* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* pmc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 
 int FUNC4 (struct tegra_powergate*,int) ; 

int FUNC5(unsigned int id, struct clk *clk,
				      struct reset_control *rst)
{
	struct tegra_powergate *pg;
	int err;

	if (!FUNC3(pmc, id))
		return -EINVAL;

	pg = FUNC2(sizeof(*pg), GFP_KERNEL);
	if (!pg)
		return -ENOMEM;

	pg->id = id;
	pg->clks = &clk;
	pg->num_clks = 1;
	pg->reset = rst;
	pg->pmc = pmc;

	err = FUNC4(pg, false);
	if (err)
		FUNC0(pmc->dev, "failed to turn on partition %d: %d\n", id,
			err);

	FUNC1(pg);

	return err;
}