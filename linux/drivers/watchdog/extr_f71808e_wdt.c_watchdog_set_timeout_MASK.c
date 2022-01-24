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
struct TYPE_2__ {int timeout; int timer_val; int minutes_mode; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int max_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ watchdog ; 

__attribute__((used)) static int FUNC4(int timeout)
{
	if (timeout <= 0
	 || timeout >  max_timeout) {
		FUNC3("watchdog timeout out of range\n");
		return -EINVAL;
	}

	FUNC1(&watchdog.lock);

	watchdog.timeout = timeout;
	if (timeout > 0xff) {
		watchdog.timer_val = FUNC0(timeout, 60);
		watchdog.minutes_mode = true;
	} else {
		watchdog.timer_val = timeout;
		watchdog.minutes_mode = false;
	}

	FUNC2(&watchdog.lock);

	return 0;
}