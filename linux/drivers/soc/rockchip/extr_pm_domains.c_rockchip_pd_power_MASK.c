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
struct rockchip_pmu {int /*<<< orphan*/  mutex; int /*<<< orphan*/  dev; } ;
struct rockchip_pm_domain {int /*<<< orphan*/  clks; int /*<<< orphan*/  num_clks; struct rockchip_pmu* pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rockchip_pm_domain*,int) ; 
 int FUNC6 (struct rockchip_pm_domain*) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_pm_domain*) ; 
 int /*<<< orphan*/  FUNC8 (struct rockchip_pm_domain*) ; 
 int /*<<< orphan*/  FUNC9 (struct rockchip_pm_domain*,int) ; 

__attribute__((used)) static int FUNC10(struct rockchip_pm_domain *pd, bool power_on)
{
	struct rockchip_pmu *pmu = pd->pmu;
	int ret;

	FUNC3(&pmu->mutex);

	if (FUNC6(pd) != power_on) {
		ret = FUNC1(pd->num_clks, pd->clks);
		if (ret < 0) {
			FUNC2(pmu->dev, "failed to enable clocks\n");
			FUNC4(&pmu->mutex);
			return ret;
		}

		if (!power_on) {
			FUNC8(pd);

			/* if powering down, idle request to NIU first */
			FUNC9(pd, true);
		}

		FUNC5(pd, power_on);

		if (power_on) {
			/* if powering up, leave idle mode */
			FUNC9(pd, false);

			FUNC7(pd);
		}

		FUNC0(pd->num_clks, pd->clks);
	}

	FUNC4(&pmu->mutex);
	return 0;
}