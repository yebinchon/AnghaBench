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
struct hw_perf_event {int idx; int state; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct dsu_hw_events {struct perf_event** events; } ;
struct dsu_pmu {int /*<<< orphan*/  associated_cpus; struct dsu_hw_events hw_events; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PERF_EF_RELOAD ; 
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dsu_hw_events*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct dsu_pmu* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event, int flags)
{
	struct dsu_pmu *dsu_pmu = FUNC6(event->pmu);
	struct dsu_hw_events *hw_events = &dsu_pmu->hw_events;
	struct hw_perf_event *hwc = &event->hw;
	int idx;

	if (FUNC0(!FUNC1(FUNC5(),
					   &dsu_pmu->associated_cpus)))
		return -ENOENT;

	idx = FUNC2(hw_events, event);
	if (idx < 0)
		return idx;

	hwc->idx = idx;
	hw_events->events[idx] = event;
	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;

	if (flags & PERF_EF_START)
		FUNC3(event, PERF_EF_RELOAD);

	FUNC4(event);
	return 0;
}