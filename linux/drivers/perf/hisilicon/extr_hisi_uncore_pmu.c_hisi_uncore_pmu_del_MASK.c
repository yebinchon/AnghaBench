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
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** hw_events; } ;
struct hisi_pmu {TYPE_1__ pmu_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_pmu*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 struct hisi_pmu* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct perf_event *event, int flags)
{
	struct hisi_pmu *hisi_pmu = FUNC3(event->pmu);
	struct hw_perf_event *hwc = &event->hw;

	FUNC1(event, PERF_EF_UPDATE);
	FUNC0(hisi_pmu, hwc->idx);
	FUNC2(event);
	hisi_pmu->pmu_events.hw_events[hwc->idx] = NULL;
}