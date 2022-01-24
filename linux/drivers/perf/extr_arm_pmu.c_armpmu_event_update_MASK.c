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
typedef  scalar_t__ u64 ;
struct hw_perf_event {int /*<<< orphan*/  period_left; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {scalar_t__ (* read_counter ) (struct perf_event*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 struct arm_pmu* FUNC6 (int /*<<< orphan*/ ) ; 

u64 FUNC7(struct perf_event *event)
{
	struct arm_pmu *armpmu = FUNC6(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	u64 delta, prev_raw_count, new_raw_count;
	u64 max_period = FUNC0(event);

again:
	prev_raw_count = FUNC3(&hwc->prev_count);
	new_raw_count = armpmu->read_counter(event);

	if (FUNC2(&hwc->prev_count, prev_raw_count,
			     new_raw_count) != prev_raw_count)
		goto again;

	delta = (new_raw_count - prev_raw_count) & max_period;

	FUNC1(delta, &event->count);
	FUNC4(delta, &hwc->period_left);

	return new_raw_count;
}