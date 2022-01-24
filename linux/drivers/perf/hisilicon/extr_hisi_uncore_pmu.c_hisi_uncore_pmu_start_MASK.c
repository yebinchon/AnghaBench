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
typedef  int /*<<< orphan*/  u64 ;
struct hw_perf_event {int state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct hisi_pmu {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* write_counter ) (struct hisi_pmu*,struct hw_perf_event*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int PERF_EF_RELOAD ; 
 int PERF_HES_STOPPED ; 
 int PERF_HES_UPTODATE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_pmu*,struct hw_perf_event*,int /*<<< orphan*/ ) ; 
 struct hisi_pmu* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct perf_event *event, int flags)
{
	struct hisi_pmu *hisi_pmu = FUNC6(event->pmu);
	struct hw_perf_event *hwc = &event->hw;

	if (FUNC0(!(hwc->state & PERF_HES_STOPPED)))
		return;

	FUNC0(!(hwc->state & PERF_HES_UPTODATE));
	hwc->state = 0;
	FUNC2(event);

	if (flags & PERF_EF_RELOAD) {
		u64 prev_raw_count =  FUNC3(&hwc->prev_count);

		hisi_pmu->ops->write_counter(hisi_pmu, hwc, prev_raw_count);
	}

	FUNC1(event);
	FUNC4(event);
}