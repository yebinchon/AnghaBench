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
struct hw_perf_event {int idx; int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  cpu; int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct cluster_pmu {struct perf_event** events; } ;

/* Variables and functions */
 int PERF_EF_START ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 struct cluster_pmu* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int) ; 
 int FUNC2 (struct cluster_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct perf_event *event, int flags)
{
	struct hw_perf_event *hwc = &event->hw;
	int idx;
	int err = 0;
	struct cluster_pmu *cluster;

	cluster = FUNC0(FUNC5(event->pmu), event->cpu);

	idx = FUNC2(cluster, event);
	if (idx < 0)
		return idx;

	hwc->idx = idx;
	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
	cluster->events[idx] = event;
	FUNC3(&hwc->prev_count, 0);

	if (flags & PERF_EF_START)
		FUNC1(event, flags);

	/* Propagate changes to the userspace mapping. */
	FUNC4(event);

	return err;
}