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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct hw_perf_event {int idx; scalar_t__ state; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct ddr_pmu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ddr_pmu*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ddr_pmu* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	struct ddr_pmu *pmu = FUNC2(event->pmu);
	struct hw_perf_event *hwc = &event->hw;
	int counter = hwc->idx;

	FUNC1(&hwc->prev_count, 0);

	FUNC0(pmu, event->attr.config, counter, true);

	hwc->state = 0;
}