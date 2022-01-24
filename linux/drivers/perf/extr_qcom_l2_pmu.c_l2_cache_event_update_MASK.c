#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct hw_perf_event {scalar_t__ idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ l2_cycle_ctr_idx ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 delta, prev, now;
	u32 idx = hwc->idx;

	do {
		prev = FUNC3(&hwc->prev_count);
		now = FUNC0(idx);
	} while (FUNC2(&hwc->prev_count, prev, now) != prev);

	/*
	 * The cycle counter is 64-bit, but all other counters are
	 * 32-bit, and we must handle 32-bit overflow explicitly.
	 */
	delta = now - prev;
	if (idx != l2_cycle_ctr_idx)
		delta &= 0xffffffff;

	FUNC1(delta, &event->count);
}