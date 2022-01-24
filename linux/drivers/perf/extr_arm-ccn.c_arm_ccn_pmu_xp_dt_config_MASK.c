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
struct hw_perf_event {scalar_t__ idx; int event_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  config_lock; } ;
struct arm_ccn {TYPE_2__ dt; struct arm_ccn_component* xp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCN_IDX_PMU_CYCLE_COUNTER ; 
 scalar_t__ CCN_TYPE_XP ; 
 scalar_t__ CCN_XP_DT_CONFIG ; 
 int CCN_XP_DT_CONFIG__DT_CFG__MASK ; 
 int CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH ; 
 int FUNC3 (scalar_t__) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct perf_event *event, int enable)
{
	struct arm_ccn *ccn = FUNC5(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	struct arm_ccn_component *xp;
	u32 val, dt_cfg;

	/* Nothing to do for cycle counter */
	if (hw->idx == CCN_IDX_PMU_CYCLE_COUNTER)
		return;

	if (FUNC1(event->attr.config) == CCN_TYPE_XP)
		xp = &ccn->xp[FUNC2(event->attr.config)];
	else
		xp = &ccn->xp[FUNC4(
				FUNC0(event->attr.config))];

	if (enable)
		dt_cfg = hw->event_base;
	else
		dt_cfg = CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH;

	FUNC7(&ccn->dt.config_lock);

	val = FUNC6(xp->base + CCN_XP_DT_CONFIG);
	val &= ~(CCN_XP_DT_CONFIG__DT_CFG__MASK <<
			FUNC3(hw->idx));
	val |= dt_cfg << FUNC3(hw->idx);
	FUNC9(val, xp->base + CCN_XP_DT_CONFIG);

	FUNC8(&ccn->dt.config_lock);
}