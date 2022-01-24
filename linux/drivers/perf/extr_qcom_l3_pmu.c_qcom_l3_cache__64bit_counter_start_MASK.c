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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {TYPE_1__ hw; int /*<<< orphan*/  pmu; } ;
struct l3cache_pmu {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ L3_M_BC_CNTENSET ; 
 scalar_t__ L3_M_BC_GANG ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  PMCNT_RESET ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct l3cache_pmu* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct perf_event *event)
{
	struct l3cache_pmu *l3pmu = FUNC9(event->pmu);
	int idx = event->hw.idx;
	u32 evsel = FUNC6(event);
	u32 gang;

	/* Set the odd counter to count the overflows of the even counter */
	gang = FUNC8(l3pmu->regs + L3_M_BC_GANG);
	gang |= FUNC1(idx + 1);
	FUNC10(gang, l3pmu->regs + L3_M_BC_GANG);

	/* Initialize the hardware counters and reset prev_count*/
	FUNC7(&event->hw.prev_count, 0);
	FUNC10(0, l3pmu->regs + FUNC3(idx + 1));
	FUNC10(0, l3pmu->regs + FUNC3(idx));

	/*
	 * Set the event types, the upper half must use zero and the lower
	 * half the actual event type
	 */
	FUNC10(FUNC0(0), l3pmu->regs + FUNC4(idx + 1));
	FUNC10(FUNC0(evsel), l3pmu->regs + FUNC4(idx));

	/* Finally, enable the counters */
	FUNC10(PMCNT_RESET, l3pmu->regs + FUNC2(idx + 1));
	FUNC10(FUNC5(idx + 1), l3pmu->regs + L3_M_BC_CNTENSET);
	FUNC10(PMCNT_RESET, l3pmu->regs + FUNC2(idx));
	FUNC10(FUNC5(idx), l3pmu->regs + L3_M_BC_CNTENSET);
}