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
struct hw_perf_event {scalar_t__ state; int /*<<< orphan*/  idx; int /*<<< orphan*/  prev_count; } ;
struct perf_event {struct hw_perf_event hw; int /*<<< orphan*/  pmu; } ;
struct arm_ccn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arm_ccn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_event *event, int flags)
{
	struct arm_ccn *ccn = FUNC3(event->pmu);
	struct hw_perf_event *hw = &event->hw;

	FUNC2(&event->hw.prev_count,
			FUNC0(ccn, hw->idx));
	hw->state = 0;

	/* Set the DT bus input, engaging the counter */
	FUNC1(event, 1);
}