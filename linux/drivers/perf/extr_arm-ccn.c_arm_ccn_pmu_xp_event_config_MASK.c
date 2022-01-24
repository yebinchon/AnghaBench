#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  config; } ;
struct hw_perf_event {size_t idx; int /*<<< orphan*/  config_base; int /*<<< orphan*/  event_base; } ;
struct perf_event {TYPE_3__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_4__ {struct arm_ccn_component* source; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCN_XP_PMU_EVENT_SEL ; 
 int CCN_XP_PMU_EVENT_SEL__ID__MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event)
{
	struct arm_ccn *ccn = FUNC5(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	struct arm_ccn_component *source =
			ccn->dt.pmu_counters[hw->idx].source;
	u32 val, id;

	hw->event_base = FUNC3(hw->config_base);

	id = (FUNC2(event->attr.config) << 4) |
			(FUNC0(event->attr.config) << 3) |
			(FUNC1(event->attr.config) << 0);

	val = FUNC6(source->base + CCN_XP_PMU_EVENT_SEL);
	val &= ~(CCN_XP_PMU_EVENT_SEL__ID__MASK <<
			FUNC4(hw->config_base));
	val |= id << FUNC4(hw->config_base);
	FUNC7(val, source->base + CCN_XP_PMU_EVENT_SEL);
}