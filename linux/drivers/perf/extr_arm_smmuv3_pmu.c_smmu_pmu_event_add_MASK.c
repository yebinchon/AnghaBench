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
struct smmu_pmu {struct perf_event** events; } ;
struct hw_perf_event {int idx; int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;

/* Variables and functions */
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,int) ; 
 int FUNC3 (struct smmu_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct smmu_pmu*,int) ; 
 struct smmu_pmu* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx;
	struct smmu_pmu *smmu_pmu = FUNC5(event->pmu);

	idx = FUNC3(smmu_pmu, event);
	if (idx < 0)
		return idx;

	hwc->idx = idx;
	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
	smmu_pmu->events[idx] = event;
	FUNC0(&hwc->prev_count, 0);

	FUNC4(smmu_pmu, idx);

	if (flags & PERF_EF_START)
		FUNC2(event, flags);

	/* Propagate changes to the userspace mapping. */
	FUNC1(event);

	return 0;
}