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

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_STARTING ; 
 int /*<<< orphan*/  arm_perf_starting_cpu ; 
 int /*<<< orphan*/  arm_perf_teardown_cpu ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(void)
{
	int ret;

	ret = FUNC0(CPUHP_AP_PERF_ARM_STARTING,
				      "perf/arm/pmu:starting",
				      arm_perf_starting_cpu,
				      arm_perf_teardown_cpu);
	if (ret)
		FUNC1("CPU hotplug notifier for ARM PMU could not be registered: %d\n",
		       ret);
	return ret;
}