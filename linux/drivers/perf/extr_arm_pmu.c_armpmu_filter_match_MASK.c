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
struct perf_event {int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int (* filter_match ) (struct perf_event*) ;int /*<<< orphan*/  supported_cpus; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 () ; 
 int FUNC2 (struct perf_event*) ; 
 struct arm_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	struct arm_pmu *armpmu = FUNC3(event->pmu);
	unsigned int cpu = FUNC1();
	int ret;

	ret = FUNC0(cpu, &armpmu->supported_cpus);
	if (ret && armpmu->filter_match)
		return armpmu->filter_match(event);

	return ret;
}