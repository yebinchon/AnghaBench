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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_8__ {int config1; int config2; int /*<<< orphan*/  config; } ;
struct hw_perf_event {size_t idx; unsigned long config_base; int /*<<< orphan*/  event_base; } ;
struct perf_event {TYPE_4__ attr; struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_7__ {TYPE_2__* cmp_mask; TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_3__ dt; } ;
struct TYPE_6__ {int l; int h; } ;
struct TYPE_5__ {struct arm_ccn_component* source; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 scalar_t__ CCN_XP_DT_INTERFACE_SEL ; 
 int CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK ; 
 int FUNC9 (unsigned long) ; 
 int CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK ; 
 int FUNC10 (unsigned long) ; 
 int CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK ; 
 int FUNC11 (unsigned long) ; 
 struct arm_ccn* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC15(struct perf_event *event)
{
	struct arm_ccn *ccn = FUNC12(event->pmu);
	struct hw_perf_event *hw = &event->hw;
	struct arm_ccn_component *source =
			ccn->dt.pmu_counters[hw->idx].source;
	unsigned long wp = hw->config_base;
	u32 val;
	u64 cmp_l = event->attr.config1;
	u64 cmp_h = event->attr.config2;
	u64 mask_l = ccn->dt.cmp_mask[FUNC1(event->attr.config)].l;
	u64 mask_h = ccn->dt.cmp_mask[FUNC1(event->attr.config)].h;

	hw->event_base = FUNC8(wp);

	/* Direction (RX/TX), device (port) & virtual channel */
	val = FUNC13(source->base + CCN_XP_DT_INTERFACE_SEL);
	val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK <<
			FUNC10(wp));
	val |= FUNC0(event->attr.config) <<
			FUNC10(wp);
	val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK <<
			FUNC9(wp));
	val |= FUNC2(event->attr.config) <<
			FUNC9(wp);
	val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK <<
			FUNC11(wp));
	val |= FUNC3(event->attr.config) <<
			FUNC11(wp);
	FUNC14(val, source->base + CCN_XP_DT_INTERFACE_SEL);

	/* Comparison values */
	FUNC14(cmp_l & 0xffffffff, source->base + FUNC7(wp));
	FUNC14((cmp_l >> 32) & 0x7fffffff,
			source->base + FUNC7(wp) + 4);
	FUNC14(cmp_h & 0xffffffff, source->base + FUNC6(wp));
	FUNC14((cmp_h >> 32) & 0x0fffffff,
			source->base + FUNC6(wp) + 4);

	/* Mask */
	FUNC14(mask_l & 0xffffffff, source->base + FUNC5(wp));
	FUNC14((mask_l >> 32) & 0x7fffffff,
			source->base + FUNC5(wp) + 4);
	FUNC14(mask_h & 0xffffffff, source->base + FUNC4(wp));
	FUNC14((mask_h >> 32) & 0x0fffffff,
			source->base + FUNC4(wp) + 4);
}