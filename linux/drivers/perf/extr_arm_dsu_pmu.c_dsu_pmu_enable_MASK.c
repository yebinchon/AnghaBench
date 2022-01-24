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
typedef  int /*<<< orphan*/  u32 ;
struct pmu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  used_mask; } ;
struct dsu_pmu {int /*<<< orphan*/  pmu_lock; TYPE_1__ hw_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERPMCR_E ; 
 int /*<<< orphan*/  DSU_PMU_MAX_HW_CNTRS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dsu_pmu* FUNC5 (struct pmu*) ; 

__attribute__((used)) static void FUNC6(struct pmu *pmu)
{
	u32 pmcr;
	unsigned long flags;
	struct dsu_pmu *dsu_pmu = FUNC5(pmu);

	/* If no counters are added, skip enabling the PMU */
	if (FUNC2(dsu_pmu->hw_events.used_mask, DSU_PMU_MAX_HW_CNTRS))
		return;

	FUNC3(&dsu_pmu->pmu_lock, flags);
	pmcr = FUNC0();
	pmcr |= CLUSTERPMCR_E;
	FUNC1(pmcr);
	FUNC4(&dsu_pmu->pmu_lock, flags);
}