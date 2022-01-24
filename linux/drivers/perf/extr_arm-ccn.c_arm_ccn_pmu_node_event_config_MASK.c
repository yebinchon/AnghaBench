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
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int /*<<< orphan*/  config; } ;
struct hw_perf_event {size_t idx; int config_base; int /*<<< orphan*/  event_base; } ;
struct perf_event {TYPE_3__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_4__ {struct arm_ccn_component* source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCN_HNF_PMU_EVENT_SEL ; 
 scalar_t__ CCN_HNF_PMU_EVENT_SEL__ID__MASK ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ CCN_RNI_PMU_EVENT_SEL ; 
 scalar_t__ CCN_RNI_PMU_EVENT_SEL__ID__MASK ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ CCN_SBAS_PMU_EVENT_SEL ; 
 scalar_t__ CCN_SBAS_PMU_EVENT_SEL__ID__MASK ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ CCN_TYPE_HNF ; 
 int /*<<< orphan*/  CCN_TYPE_RNI_3P ; 
 scalar_t__ CCN_TYPE_SBAS ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct perf_event *event)
{
	struct arm_ccn *ccn = FUNC11(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	struct arm_ccn_component *source =
			ccn->dt.pmu_counters[hw->idx].source;
	u32 type = FUNC3(event->attr.config);
	u32 val, port;

	port = FUNC9(FUNC2(event->attr.config));
	hw->event_base = FUNC7(port,
			hw->config_base);

	/* These *_event_sel regs should be identical, but let's make sure... */
	FUNC0(CCN_HNF_PMU_EVENT_SEL != CCN_SBAS_PMU_EVENT_SEL);
	FUNC0(CCN_SBAS_PMU_EVENT_SEL != CCN_RNI_PMU_EVENT_SEL);
	FUNC0(FUNC4(1) !=
			FUNC6(1));
	FUNC0(FUNC6(1) !=
			FUNC5(1));
	FUNC0(CCN_HNF_PMU_EVENT_SEL__ID__MASK !=
			CCN_SBAS_PMU_EVENT_SEL__ID__MASK);
	FUNC0(CCN_SBAS_PMU_EVENT_SEL__ID__MASK !=
			CCN_RNI_PMU_EVENT_SEL__ID__MASK);
	if (FUNC8(type != CCN_TYPE_HNF && type != CCN_TYPE_SBAS &&
			!FUNC10(type, CCN_TYPE_RNI_3P)))
		return;

	/* Set the event id for the pre-allocated counter */
	val = FUNC12(source->base + CCN_HNF_PMU_EVENT_SEL);
	val &= ~(CCN_HNF_PMU_EVENT_SEL__ID__MASK <<
		FUNC4(hw->config_base));
	val |= FUNC1(event->attr.config) <<
		FUNC4(hw->config_base);
	FUNC13(val, source->base + CCN_HNF_PMU_EVENT_SEL);
}