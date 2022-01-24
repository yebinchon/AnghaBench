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
typedef  scalar_t__ next_timeslot ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 unsigned long jiffies ; 
 unsigned long lb_interval_jiffies ; 
 int /*<<< orphan*/  lb_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(void)
{
	static unsigned long last_access;
	unsigned long now, next_timeslot;
	long delay;
	int ret = 0;

	FUNC0(&lb_mutex);

	now = jiffies;
	next_timeslot = last_access + lb_interval_jiffies;

	if (FUNC4(now, next_timeslot)) {
		delay = (long)(next_timeslot) - (long)now;
		FUNC3(TASK_INTERRUPTIBLE);
		if (FUNC2(delay) > 0) {
			/* interrupted - just abort */
			ret = -EINTR;
			goto out;
		}
		now = jiffies;
	}

	last_access = now;
out:
	FUNC1(&lb_mutex);

	return ret;
}