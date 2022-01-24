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
typedef  int /*<<< orphan*/  u32 ;
struct pmu {int dummy; } ;
struct dsu_pmu {int /*<<< orphan*/  pmu_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERPMCR_E ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dsu_pmu* FUNC4 (struct pmu*) ; 

__attribute__((used)) static void FUNC5(struct pmu *pmu)
{
	u32 pmcr;
	unsigned long flags;
	struct dsu_pmu *dsu_pmu = FUNC4(pmu);

	FUNC2(&dsu_pmu->pmu_lock, flags);
	pmcr = FUNC0();
	pmcr &= ~CLUSTERPMCR_E;
	FUNC1(pmcr);
	FUNC3(&dsu_pmu->pmu_lock, flags);
}