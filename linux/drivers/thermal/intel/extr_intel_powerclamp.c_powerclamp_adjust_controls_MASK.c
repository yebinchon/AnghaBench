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
typedef  int u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int current_ratio ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  idle_wakeup_counter ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int reduce_irq ; 
 unsigned int set_target_ratio ; 

__attribute__((used)) static bool FUNC7(unsigned int target_ratio,
				unsigned int guard, unsigned int win)
{
	static u64 msr_last, tsc_last;
	u64 msr_now, tsc_now;
	u64 val64;

	/* check result for the last window */
	msr_now = FUNC5();
	tsc_now = FUNC6();

	/* calculate pkg cstate vs tsc ratio */
	if (!msr_last || !tsc_last)
		current_ratio = 1;
	else if (tsc_now-tsc_last) {
		val64 = 100*(msr_now-msr_last);
		FUNC3(val64, (tsc_now-tsc_last));
		current_ratio = val64;
	}

	/* update record */
	msr_last = msr_now;
	tsc_last = tsc_now;

	FUNC0(target_ratio, win);
	/*
	 * too many external interrupts, set flag such
	 * that we can take measure later.
	 */
	reduce_irq = FUNC1(&idle_wakeup_counter) >=
		2 * win * FUNC4();

	FUNC2(&idle_wakeup_counter, 0);
	/* if we are above target+guard, skip */
	return set_target_ratio + guard <= current_ratio;
}