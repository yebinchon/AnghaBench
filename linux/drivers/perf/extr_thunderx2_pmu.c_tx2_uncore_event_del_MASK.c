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
struct tx2_uncore_pmu {int /*<<< orphan*/ ** events; } ;
struct hw_perf_event {size_t idx; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  FUNC1 (struct tx2_uncore_pmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 struct tx2_uncore_pmu* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int flags)
{
	struct tx2_uncore_pmu *tx2_pmu = FUNC3(event->pmu);
	struct hw_perf_event *hwc = &event->hw;

	FUNC4(event, PERF_EF_UPDATE);

	/* clear the assigned counter */
	FUNC1(tx2_pmu, FUNC0(event));

	FUNC2(event);
	tx2_pmu->events[hwc->idx] = NULL;
	hwc->idx = -1;
}