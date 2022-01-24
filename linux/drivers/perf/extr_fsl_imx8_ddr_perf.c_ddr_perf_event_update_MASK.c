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
struct hw_perf_event {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct ddr_pmu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ddr_pmu*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct ddr_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct ddr_pmu *pmu = FUNC4(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	u64 delta, prev_raw_count, new_raw_count;
	int counter = hwc->idx;

	do {
		prev_raw_count = FUNC3(&hwc->prev_count);
		new_raw_count = FUNC0(pmu, counter);
	} while (FUNC2(&hwc->prev_count, prev_raw_count,
			new_raw_count) != prev_raw_count);

	delta = (new_raw_count - prev_raw_count) & 0xFFFFFFFF;

	FUNC1(delta, &event->count);
}