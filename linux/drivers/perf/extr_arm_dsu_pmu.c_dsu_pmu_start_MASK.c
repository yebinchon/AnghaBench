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
struct TYPE_2__ {int state; scalar_t__ idx; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  pmu; } ;
struct dsu_pmu {int dummy; } ;

/* Variables and functions */
 scalar_t__ DSU_PMU_IDX_CYCLE_COUNTER ; 
 int PERF_EF_RELOAD ; 
 int PERF_HES_UPTODATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dsu_pmu*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dsu_pmu*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 struct dsu_pmu* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event, int pmu_flags)
{
	struct dsu_pmu *dsu_pmu = FUNC4(event->pmu);

	/* We always reprogram the counter */
	if (pmu_flags & PERF_EF_RELOAD)
		FUNC0(!(event->hw.state & PERF_HES_UPTODATE));
	FUNC3(event);
	if (event->hw.idx != DSU_PMU_IDX_CYCLE_COUNTER)
		FUNC2(dsu_pmu, event);
	event->hw.state = 0;
	FUNC1(dsu_pmu, event->hw.idx);
}