#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  config; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct TYPE_4__ {int /*<<< orphan*/  config_lock; scalar_t__ base; } ;
struct arm_ccn {TYPE_2__ dt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCN_DT_ACTIVE_DSM ; 
 int CCN_DT_ACTIVE_DSM__DSM_ID__MASK ; 
 int FUNC4 (int) ; 
 scalar_t__ CCN_EVENT_WATCHPOINT ; 
 int CCN_IDX_PMU_CYCLE_COUNTER ; 
 scalar_t__ CCN_TYPE_XP ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*) ; 
 struct arm_ccn* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct perf_event *event)
{
	struct arm_ccn *ccn = FUNC9(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	u32 xp, offset, val;

	/* Cycle counter requires no setup */
	if (hw->idx == CCN_IDX_PMU_CYCLE_COUNTER)
		return;

	if (FUNC2(event->attr.config) == CCN_TYPE_XP)
		xp = FUNC3(event->attr.config);
	else
		xp = FUNC5(FUNC1(event->attr.config));

	FUNC11(&ccn->dt.config_lock);

	/* Set the DT bus "distance" register */
	offset = (hw->idx / 4) * 4;
	val = FUNC10(ccn->dt.base + CCN_DT_ACTIVE_DSM + offset);
	val &= ~(CCN_DT_ACTIVE_DSM__DSM_ID__MASK <<
			FUNC4(hw->idx % 4));
	val |= xp << FUNC4(hw->idx % 4);
	FUNC13(val, ccn->dt.base + CCN_DT_ACTIVE_DSM + offset);

	if (FUNC2(event->attr.config) == CCN_TYPE_XP) {
		if (FUNC0(event->attr.config) ==
				CCN_EVENT_WATCHPOINT)
			FUNC8(event);
		else
			FUNC7(event);
	} else {
		FUNC6(event);
	}

	FUNC12(&ccn->dt.config_lock);
}