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
struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct ddr_pmu {int /*<<< orphan*/  active_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ddr_pmu*,int) ; 
 struct ddr_pmu* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct ddr_pmu *pmu = FUNC2(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int counter = hwc->idx;

	FUNC0(event, PERF_EF_UPDATE);

	FUNC1(pmu, counter);
	pmu->active_events--;
	hwc->idx = -1;
}