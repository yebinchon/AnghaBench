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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct dsu_pmu {int num_counters; int /*<<< orphan*/  cpmceid_bitmap; } ;

/* Variables and functions */
 int CLUSTERPMCR_N_MASK ; 
 int CLUSTERPMCR_N_SHIFT ; 
 int /*<<< orphan*/  DSU_PMU_MAX_COMMON_EVENTS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dsu_pmu *dsu_pmu)
{
	u64 num_counters;
	u32 cpmceid[2];

	num_counters = (FUNC2() >> CLUSTERPMCR_N_SHIFT) &
						CLUSTERPMCR_N_MASK;
	/* We can only support up to 31 independent counters */
	if (FUNC0(num_counters > 31))
		num_counters = 31;
	dsu_pmu->num_counters = num_counters;
	if (!dsu_pmu->num_counters)
		return;
	cpmceid[0] = FUNC1(0);
	cpmceid[1] = FUNC1(1);
	FUNC3(dsu_pmu->cpmceid_bitmap, cpmceid,
			  DSU_PMU_MAX_COMMON_EVENTS);
}