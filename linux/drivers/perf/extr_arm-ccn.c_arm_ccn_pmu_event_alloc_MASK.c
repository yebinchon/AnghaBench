#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_5__ {int /*<<< orphan*/  config; } ;
struct hw_perf_event {size_t idx; int config_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct TYPE_6__ {int /*<<< orphan*/  dt_cmp_mask; } ;
struct arm_ccn_component {int /*<<< orphan*/  pmu_events_mask; TYPE_2__ xp; } ;
struct TYPE_8__ {TYPE_3__* pmu_counters; int /*<<< orphan*/  pmu_counters_mask; } ;
struct arm_ccn {TYPE_4__ dt; int /*<<< orphan*/  dev; struct arm_ccn_component* node; struct arm_ccn_component* xp; } ;
struct TYPE_7__ {struct perf_event* event; struct arm_ccn_component* source; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCN_EVENT_WATCHPOINT ; 
 size_t CCN_IDX_PMU_CYCLE_COUNTER ; 
 int /*<<< orphan*/  CCN_NUM_PMU_EVENTS ; 
 int /*<<< orphan*/  CCN_NUM_PMU_EVENT_COUNTERS ; 
 int /*<<< orphan*/  CCN_NUM_XP_WATCHPOINTS ; 
 scalar_t__ CCN_TYPE_CYCLES ; 
 scalar_t__ CCN_TYPE_XP ; 
 int EAGAIN ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 struct arm_ccn* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct perf_event *event)
{
	struct arm_ccn *ccn = FUNC6(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	u32 node_xp, type, event_id;
	struct arm_ccn_component *source;
	int bit;

	node_xp = FUNC1(event->attr.config);
	type = FUNC2(event->attr.config);
	event_id = FUNC0(event->attr.config);

	/* Allocate the cycle counter */
	if (type == CCN_TYPE_CYCLES) {
		if (FUNC7(CCN_IDX_PMU_CYCLE_COUNTER,
				ccn->dt.pmu_counters_mask))
			return -EAGAIN;

		hw->idx = CCN_IDX_PMU_CYCLE_COUNTER;
		ccn->dt.pmu_counters[CCN_IDX_PMU_CYCLE_COUNTER].event = event;

		return 0;
	}

	/* Allocate an event counter */
	hw->idx = FUNC3(ccn->dt.pmu_counters_mask,
			CCN_NUM_PMU_EVENT_COUNTERS);
	if (hw->idx < 0) {
		FUNC5(ccn->dev, "No more counters available!\n");
		return -EAGAIN;
	}

	if (type == CCN_TYPE_XP)
		source = &ccn->xp[node_xp];
	else
		source = &ccn->node[node_xp];
	ccn->dt.pmu_counters[hw->idx].source = source;

	/* Allocate an event source or a watchpoint */
	if (type == CCN_TYPE_XP && event_id == CCN_EVENT_WATCHPOINT)
		bit = FUNC3(source->xp.dt_cmp_mask,
				CCN_NUM_XP_WATCHPOINTS);
	else
		bit = FUNC3(source->pmu_events_mask,
				CCN_NUM_PMU_EVENTS);
	if (bit < 0) {
		FUNC5(ccn->dev, "No more event sources/watchpoints on node/XP %d!\n",
				node_xp);
		FUNC4(hw->idx, ccn->dt.pmu_counters_mask);
		return -EAGAIN;
	}
	hw->config_base = bit;

	ccn->dt.pmu_counters[hw->idx].event = event;

	return 0;
}