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
struct ci_hdrc {int enabled_otg_timer_bits; int next_otg_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * hr_timeouts; int /*<<< orphan*/  otg_fsm_hrtimer; } ;
typedef  enum otg_fsm_timer { ____Placeholder_otg_fsm_timer } otg_fsm_timer ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 unsigned long MSEC_PER_SEC ; 
 unsigned long NSEC_PER_MSEC ; 
 int NUM_OTG_FSM_TIMERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 unsigned long* otg_timer_ms ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ci_hdrc *ci, enum otg_fsm_timer t)
{
	unsigned long flags, timer_sec, timer_nsec;

	if (t >= NUM_OTG_FSM_TIMERS)
		return;

	FUNC5(&ci->lock, flags);
	timer_sec = otg_timer_ms[t] / MSEC_PER_SEC;
	timer_nsec = (otg_timer_ms[t] % MSEC_PER_SEC) * NSEC_PER_MSEC;
	ci->hr_timeouts[t] = FUNC1(FUNC3(),
				FUNC4(timer_sec, timer_nsec));
	ci->enabled_otg_timer_bits |= (1 << t);
	if ((ci->next_otg_timer == NUM_OTG_FSM_TIMERS) ||
			FUNC2(ci->hr_timeouts[ci->next_otg_timer],
						ci->hr_timeouts[t])) {
			ci->next_otg_timer = t;
			FUNC0(&ci->otg_fsm_hrtimer,
					ci->hr_timeouts[t], NSEC_PER_MSEC,
							HRTIMER_MODE_ABS);
	}
	FUNC6(&ci->lock, flags);
}