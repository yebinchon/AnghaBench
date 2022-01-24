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
struct hw_perf_event {int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {int /*<<< orphan*/  count; struct hw_perf_event hw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event *event)
{
	struct hw_perf_event *hwc = &event->hw;
	u64 delta, prev_count, new_count;

	do {
		/* We may also be called from the irq handler */
		prev_count = FUNC4(&hwc->prev_count);
		new_count = FUNC1(event);
	} while (FUNC3(&hwc->prev_count, prev_count, new_count) !=
			prev_count);
	delta = (new_count - prev_count) & FUNC0(hwc->idx);
	FUNC2(delta, &event->count);
}