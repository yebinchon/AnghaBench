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
typedef  int u32 ;
struct perf_event {int dummy; } ;
struct arm_ccn_dt {TYPE_1__* pmu_counters; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct perf_event* event; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ CCN_DT_PMOVSR ; 
 scalar_t__ CCN_DT_PMOVSR_CLR ; 
 int CCN_IDX_PMU_CYCLE_COUNTER ; 
 int CCN_NUM_PMU_EVENT_COUNTERS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(struct arm_ccn_dt *dt)
{
	u32 pmovsr = FUNC4(dt->base + CCN_DT_PMOVSR);
	int idx;

	if (!pmovsr)
		return IRQ_NONE;

	FUNC5(pmovsr, dt->base + CCN_DT_PMOVSR_CLR);

	FUNC1(CCN_IDX_PMU_CYCLE_COUNTER != CCN_NUM_PMU_EVENT_COUNTERS);

	for (idx = 0; idx < CCN_NUM_PMU_EVENT_COUNTERS + 1; idx++) {
		struct perf_event *event = dt->pmu_counters[idx].event;
		int overflowed = pmovsr & FUNC0(idx);

		FUNC2(overflowed && !event &&
				idx != CCN_IDX_PMU_CYCLE_COUNTER);

		if (!event || !overflowed)
			continue;

		FUNC3(event);
	}

	return IRQ_HANDLED;
}