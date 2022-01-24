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
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct l3cache_pmu {int /*<<< orphan*/  used_mask; int /*<<< orphan*/ ** events; } ;

/* Variables and functions */
 int PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int) ; 
 struct l3cache_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct l3cache_pmu *l3pmu = FUNC4(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int order = FUNC1(event) ? 1 : 0;

	/* Stop and clean up */
	FUNC3(event,  flags | PERF_EF_UPDATE);
	l3pmu->events[hwc->idx] = NULL;
	FUNC0(l3pmu->used_mask, hwc->idx, order);

	/* Propagate changes to the userspace mapping. */
	FUNC2(event);
}