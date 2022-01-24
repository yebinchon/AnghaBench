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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct rockchip_pm_domain {TYPE_1__* pmu; scalar_t__ num_clks; int /*<<< orphan*/  clks; TYPE_2__ genpd; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct rockchip_pm_domain *pd)
{
	int ret;

	/*
	 * We're in the error cleanup already, so we only complain,
	 * but won't emit another error on top of the original one.
	 */
	ret = FUNC5(&pd->genpd);
	if (ret < 0)
		FUNC2(pd->pmu->dev, "failed to remove domain '%s' : %d - state may be inconsistent\n",
			pd->genpd.name, ret);

	FUNC1(pd->num_clks, pd->clks);
	FUNC0(pd->num_clks, pd->clks);

	/* protect the zeroing of pm->num_clks */
	FUNC3(&pd->pmu->mutex);
	pd->num_clks = 0;
	FUNC4(&pd->pmu->mutex);

	/* devm will free our memory */
}