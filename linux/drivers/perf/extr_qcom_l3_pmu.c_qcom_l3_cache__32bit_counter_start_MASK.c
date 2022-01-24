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
struct TYPE_2__ {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  pmu; } ;
struct l3cache_pmu {scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ L3_M_BC_CNTENSET ; 
 scalar_t__ L3_M_BC_INTENSET ; 
 scalar_t__ L3_M_BC_IRQCTL ; 
 int FUNC4 (int) ; 
 int PMCNT_RESET ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__) ; 
 struct l3cache_pmu* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct perf_event *event)
{
	struct l3cache_pmu *l3pmu = FUNC10(event->pmu);
	int idx = event->hw.idx;
	u32 evsel = FUNC7(event);
	u32 irqctl = FUNC9(l3pmu->regs + L3_M_BC_IRQCTL);

	/* Set the counter to assert the overflow IRQ on MSB toggling */
	FUNC11(irqctl | FUNC6(idx), l3pmu->regs + L3_M_BC_IRQCTL);

	/* Initialize the hardware counter and reset prev_count*/
	FUNC8(&event->hw.prev_count, 0);
	FUNC11(0, l3pmu->regs + FUNC2(idx));

	/* Set the event type */
	FUNC11(FUNC0(evsel), l3pmu->regs + FUNC3(idx));

	/* Enable interrupt generation by this counter */
	FUNC11(FUNC5(idx), l3pmu->regs + L3_M_BC_INTENSET);

	/* Finally, enable the counter */
	FUNC11(PMCNT_RESET, l3pmu->regs + FUNC1(idx));
	FUNC11(FUNC4(idx), l3pmu->regs + L3_M_BC_CNTENSET);
}