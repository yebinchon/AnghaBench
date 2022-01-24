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
struct rockchip_pmu {int /*<<< orphan*/  dev; TYPE_1__* info; int /*<<< orphan*/  regmap; } ;
struct generic_pm_domain {int /*<<< orphan*/  name; } ;
struct rockchip_pm_domain {TYPE_2__* info; struct generic_pm_domain genpd; struct rockchip_pmu* pmu; } ;
struct TYPE_4__ {int pwr_mask; int pwr_w_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  pwr_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rockchip_pm_domain*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rockchip_pmu_domain_is_on ; 
 int /*<<< orphan*/  sy ; 

__attribute__((used)) static void FUNC5(struct rockchip_pm_domain *pd,
					     bool on)
{
	struct rockchip_pmu *pmu = pd->pmu;
	struct generic_pm_domain *genpd = &pd->genpd;
	bool is_on;

	if (pd->info->pwr_mask == 0)
		return;
	else if (pd->info->pwr_w_mask)
		FUNC4(pmu->regmap, pmu->info->pwr_offset,
			     on ? pd->info->pwr_w_mask :
			     (pd->info->pwr_mask | pd->info->pwr_w_mask));
	else
		FUNC3(pmu->regmap, pmu->info->pwr_offset,
				   pd->info->pwr_mask, on ? 0 : -1U);

	FUNC1(sy);

	if (FUNC2(rockchip_pmu_domain_is_on, pd, is_on,
				      is_on == on, 0, 10000)) {
		FUNC0(pmu->dev,
			"failed to set domain '%s', val=%d\n",
			genpd->name, is_on);
		return;
	}
}