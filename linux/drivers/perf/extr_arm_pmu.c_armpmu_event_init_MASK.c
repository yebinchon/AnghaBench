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
struct perf_event {int cpu; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int (* map_event ) (struct perf_event*) ;int /*<<< orphan*/  supported_cpus; } ;

/* Variables and functions */
 int ENOENT ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct perf_event*) ; 
 int FUNC3 (struct perf_event*) ; 
 struct arm_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct perf_event *event)
{
	struct arm_pmu *armpmu = FUNC4(event->pmu);

	/*
	 * Reject CPU-affine events for CPUs that are of a different class to
	 * that which this PMU handles. Process-following events (where
	 * event->cpu == -1) can be migrated between CPUs, and thus we have to
	 * reject them later (in armpmu_add) if they're scheduled on a
	 * different class of CPU.
	 */
	if (event->cpu != -1 &&
		!FUNC1(event->cpu, &armpmu->supported_cpus))
		return -ENOENT;

	/* does not support taken branch sampling */
	if (FUNC2(event))
		return -EOPNOTSUPP;

	if (armpmu->map_event(event) == -ENOENT)
		return -ENOENT;

	return FUNC0(event);
}