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
struct hw_perf_event {int dummy; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {unsigned long* used_mask; } ;
struct hisi_pmu {TYPE_1__ pmu_events; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct hw_perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned long*) ; 
 scalar_t__ FUNC2 (int,unsigned long*) ; 
 struct hisi_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct perf_event *event)
{
	struct hisi_pmu *ddrc_pmu = FUNC3(event->pmu);
	unsigned long *used_mask = ddrc_pmu->pmu_events.used_mask;
	struct hw_perf_event *hwc = &event->hw;
	/* For DDRC PMU, we use event code as counter index */
	int idx = FUNC0(hwc);

	if (FUNC2(idx, used_mask))
		return -EAGAIN;

	FUNC1(idx, used_mask);

	return idx;
}