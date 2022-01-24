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
struct arm_pmu {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_PERF_ARM_STARTING ; 
 int FUNC0 (struct arm_pmu*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct arm_pmu *cpu_pmu)
{
	int err;

	err = FUNC1(CPUHP_AP_PERF_ARM_STARTING,
				       &cpu_pmu->node);
	if (err)
		goto out;

	err = FUNC0(cpu_pmu);
	if (err)
		goto out_unregister;

	return 0;

out_unregister:
	FUNC2(CPUHP_AP_PERF_ARM_STARTING,
					    &cpu_pmu->node);
out:
	return err;
}