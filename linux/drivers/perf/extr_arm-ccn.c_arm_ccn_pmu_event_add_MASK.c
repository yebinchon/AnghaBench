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
struct hw_perf_event {int /*<<< orphan*/  state; } ;
struct perf_event {int /*<<< orphan*/  pmu; struct hw_perf_event hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  hrtimer; } ;
struct arm_ccn {TYPE_1__ dt; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_REL_PINNED ; 
 int PERF_EF_START ; 
 int /*<<< orphan*/  PERF_EF_UPDATE ; 
 int /*<<< orphan*/  PERF_HES_STOPPED ; 
 int FUNC0 (struct arm_ccn*) ; 
 int FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arm_ccn* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct perf_event *event, int flags)
{
	int err;
	struct hw_perf_event *hw = &event->hw;
	struct arm_ccn *ccn = FUNC6(event->pmu);

	err = FUNC1(event);
	if (err)
		return err;

	/*
	 * Pin the timer, so that the overflows are handled by the chosen
	 * event->cpu (this is the same one as presented in "cpumask"
	 * attribute).
	 */
	if (!ccn->irq && FUNC0(ccn) == 1)
		FUNC5(&ccn->dt.hrtimer, FUNC4(),
			      HRTIMER_MODE_REL_PINNED);

	FUNC2(event);

	hw->state = PERF_HES_STOPPED;

	if (flags & PERF_EF_START)
		FUNC3(event, PERF_EF_UPDATE);

	return 0;
}