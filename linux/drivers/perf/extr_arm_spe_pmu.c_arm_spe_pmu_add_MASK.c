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
struct hw_perf_event {int state; } ;
struct perf_event {int cpu; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_spe_pmu {int /*<<< orphan*/  supported_cpus; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 struct arm_spe_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event, int flags)
{
	int ret = 0;
	struct arm_spe_pmu *spe_pmu = FUNC3(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int cpu = event->cpu == -1 ? FUNC2() : event->cpu;

	if (!FUNC1(cpu, &spe_pmu->supported_cpus))
		return -ENOENT;

	hwc->state = PERF_HES_UPTODATE | PERF_HES_STOPPED;

	if (flags & PERF_EF_START) {
		FUNC0(event, PERF_EF_RELOAD);
		if (hwc->state & PERF_HES_STOPPED)
			ret = -EINVAL;
	}

	return ret;
}