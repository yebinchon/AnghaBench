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
typedef  int u64 ;
struct hw_perf_event {int sample_period; int last_period; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  period_left; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_pmu {int /*<<< orphan*/  (* write_counter ) (struct perf_event*,int) ;} ;
typedef  int s64 ;

/* Variables and functions */
 int FUNC0 (struct perf_event*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int) ; 
 struct arm_pmu* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct perf_event *event)
{
	struct arm_pmu *armpmu = FUNC5(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	s64 left = FUNC1(&hwc->period_left);
	s64 period = hwc->sample_period;
	u64 max_period;
	int ret = 0;

	max_period = FUNC0(event);
	if (FUNC6(left <= -period)) {
		left = period;
		FUNC2(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	}

	if (FUNC6(left <= 0)) {
		left += period;
		FUNC2(&hwc->period_left, left);
		hwc->last_period = period;
		ret = 1;
	}

	/*
	 * Limit the maximum period to prevent the counter value
	 * from overtaking the one we are about to program. In
	 * effect we are reducing max_period to account for
	 * interrupt latency (and we are being very conservative).
	 */
	if (left > (max_period >> 1))
		left = (max_period >> 1);

	FUNC2(&hwc->prev_count, (u64)-left);

	armpmu->write_counter(event, (u64)(-left) & max_period);

	FUNC3(event);

	return ret;
}