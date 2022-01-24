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
struct TYPE_2__ {int /*<<< orphan*/  capabilities; } ;
struct arm_pmu {int /*<<< orphan*/  num_events; int /*<<< orphan*/  name; TYPE_1__ pmu; int /*<<< orphan*/  set_event_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_PMU_CAP_NO_EXCLUDE ; 
 struct arm_pmu* __oprofile_cpu_pmu ; 
 int /*<<< orphan*/  FUNC0 (struct arm_pmu*) ; 
 int FUNC1 (struct arm_pmu*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct arm_pmu *pmu)
{
	int ret;

	ret = FUNC1(pmu);
	if (ret)
		return ret;

	if (!pmu->set_event_filter)
		pmu->pmu.capabilities |= PERF_PMU_CAP_NO_EXCLUDE;

	ret = FUNC2(&pmu->pmu, pmu->name, -1);
	if (ret)
		goto out_destroy;

	if (!__oprofile_cpu_pmu)
		__oprofile_cpu_pmu = pmu;

	FUNC3("enabled with %s PMU driver, %d counters available\n",
		pmu->name, pmu->num_events);

	return 0;

out_destroy:
	FUNC0(pmu);
	return ret;
}