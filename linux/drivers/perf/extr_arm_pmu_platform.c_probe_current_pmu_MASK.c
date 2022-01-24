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
struct pmu_probe_info {int (* init ) (struct arm_pmu*) ;unsigned int mask; unsigned int cpuid; } ;
struct arm_pmu {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int FUNC4 (struct arm_pmu*) ; 

__attribute__((used)) static int FUNC5(struct arm_pmu *pmu,
			     const struct pmu_probe_info *info)
{
	int cpu = FUNC0();
	unsigned int cpuid = FUNC3();
	int ret = -ENODEV;

	FUNC1("probing PMU on CPU %d\n", cpu);

	for (; info->init != NULL; info++) {
		if ((cpuid & info->mask) != info->cpuid)
			continue;
		ret = info->init(pmu);
		break;
	}

	FUNC2();
	return ret;
}