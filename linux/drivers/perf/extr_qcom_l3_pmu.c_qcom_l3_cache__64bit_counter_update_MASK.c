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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; TYPE_1__ hw; int /*<<< orphan*/  pmu; } ;
struct l3cache_pmu {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 struct l3cache_pmu* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event)
{
	struct l3cache_pmu *l3pmu = FUNC5(event->pmu);
	int idx = event->hw.idx;
	u32 hi, lo;
	u64 prev, new;

	do {
		prev = FUNC3(&event->hw.prev_count);
		do {
			hi = FUNC4(l3pmu->regs + FUNC0(idx + 1));
			lo = FUNC4(l3pmu->regs + FUNC0(idx));
		} while (hi != FUNC4(l3pmu->regs + FUNC0(idx + 1)));
		new = ((u64)hi << 32) | lo;
	} while (FUNC2(&event->hw.prev_count, prev, new) != prev);

	FUNC1(new - prev, &event->count);
}