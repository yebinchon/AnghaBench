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
struct ltc2952_poweroff {int /*<<< orphan*/  wde_interval; int /*<<< orphan*/  gpio_watchdog; scalar_t__ kernel_panic; } ;
struct hrtimer {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;
typedef  enum hrtimer_restart { ____Placeholder_hrtimer_restart } hrtimer_restart ;

/* Variables and functions */
 int HRTIMER_NORESTART ; 
 int HRTIMER_RESTART ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hrtimer*) ; 
 unsigned long FUNC3 (struct hrtimer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_wde ; 
 struct ltc2952_poweroff* FUNC4 (struct hrtimer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum hrtimer_restart FUNC5(struct hrtimer *timer)
{
	ktime_t now;
	int state;
	unsigned long overruns;
	struct ltc2952_poweroff *data = FUNC4(timer, timer_wde);

	if (data->kernel_panic)
		return HRTIMER_NORESTART;

	state = FUNC0(data->gpio_watchdog);
	FUNC1(data->gpio_watchdog, !state);

	now = FUNC2(timer);
	overruns = FUNC3(timer, now, data->wde_interval);

	return HRTIMER_RESTART;
}