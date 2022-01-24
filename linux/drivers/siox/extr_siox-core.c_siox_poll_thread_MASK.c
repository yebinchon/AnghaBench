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
struct siox_master {unsigned long last_poll; unsigned long poll_interval; scalar_t__ active; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_IDLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long jiffies ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct siox_master*) ; 
 int /*<<< orphan*/  FUNC6 (struct siox_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct siox_master*) ; 
 scalar_t__ FUNC8 (unsigned long) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct siox_master *smaster = data;
	signed long timeout = 0;

	FUNC0(&smaster->dev);

	for (;;) {
		if (FUNC1()) {
			FUNC2(&smaster->dev);
			return 0;
		}

		FUNC5(smaster);

		if (smaster->active) {
			unsigned long next_poll =
				smaster->last_poll + smaster->poll_interval;
			if (FUNC8(next_poll))
				FUNC7(smaster);

			timeout = smaster->poll_interval -
				(jiffies - smaster->last_poll);
		} else {
			timeout = MAX_SCHEDULE_TIMEOUT;
		}

		/*
		 * Set the task to idle while holding the lock. This makes sure
		 * that we don't sleep too long when the bus is reenabled before
		 * schedule_timeout is reached.
		 */
		if (timeout > 0)
			FUNC4(TASK_IDLE);

		FUNC6(smaster);

		if (timeout > 0)
			FUNC3(timeout);

		/*
		 * I'm not clear if/why it is important to set the state to
		 * RUNNING again, but it fixes a "do not call blocking ops when
		 * !TASK_RUNNING;"-warning.
		 */
		FUNC4(TASK_RUNNING);
	}
}