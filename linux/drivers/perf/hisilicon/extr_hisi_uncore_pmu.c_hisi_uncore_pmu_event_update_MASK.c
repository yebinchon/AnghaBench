#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct hw_perf_event {int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct hisi_pmu {int /*<<< orphan*/  counter_bits; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* read_counter ) (struct hisi_pmu*,struct hw_perf_event*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct hisi_pmu*,struct hw_perf_event*) ; 
 struct hisi_pmu* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct perf_event *event)
{
	struct hisi_pmu *hisi_pmu = FUNC5(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	u64 delta, prev_raw_count, new_raw_count;

	do {
		/* Read the count from the counter register */
		new_raw_count = hisi_pmu->ops->read_counter(hisi_pmu, hwc);
		prev_raw_count = FUNC3(&hwc->prev_count);
	} while (FUNC2(&hwc->prev_count, prev_raw_count,
				 new_raw_count) != prev_raw_count);
	/*
	 * compute the delta
	 */
	delta = (new_raw_count - prev_raw_count) &
		FUNC0(hisi_pmu->counter_bits);
	FUNC1(delta, &event->count);
}