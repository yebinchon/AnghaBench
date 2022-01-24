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
struct tegra_powergate {size_t num_clks; int /*<<< orphan*/  id; struct tegra_powergate* clks; int /*<<< orphan*/  reset; } ;
struct generic_pm_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  powergates_available; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tegra_powergate) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_powergate*) ; 
 TYPE_1__* pmc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_powergate* FUNC4 (struct generic_pm_domain*) ; 

__attribute__((used)) static void FUNC5(struct generic_pm_domain *genpd)
{
	struct tegra_powergate *pg = FUNC4(genpd);

	FUNC2(pg->reset);

	while (pg->num_clks--)
		FUNC0(pg->clks[pg->num_clks]);

	FUNC1(pg->clks);

	FUNC3(pg->id, pmc->powergates_available);

	FUNC1(pg);
}