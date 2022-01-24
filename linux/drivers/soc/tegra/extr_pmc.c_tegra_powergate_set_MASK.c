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
struct tegra_pmc {int /*<<< orphan*/  powergates_lock; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ has_gpu_clamps; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PWRGATE_TOGGLE ; 
 unsigned int PWRGATE_TOGGLE_START ; 
 unsigned int TEGRA_POWERGATE_3D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int (*) (unsigned int),unsigned int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_pmc*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct tegra_pmc *pmc, unsigned int id,
			       bool new_state)
{
	bool status;
	int err;

	if (id == TEGRA_POWERGATE_3D && pmc->soc->has_gpu_clamps)
		return -EINVAL;

	FUNC0(&pmc->powergates_lock);

	if (FUNC4(id) == new_state) {
		FUNC1(&pmc->powergates_lock);
		return 0;
	}

	FUNC3(pmc, PWRGATE_TOGGLE_START | id, PWRGATE_TOGGLE);

	err = FUNC2(tegra_powergate_state, id, status,
				 status == new_state, 10, 100000);

	FUNC1(&pmc->powergates_lock);

	return err;
}