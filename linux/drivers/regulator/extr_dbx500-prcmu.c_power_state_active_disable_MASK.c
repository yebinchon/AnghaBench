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

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ power_state_active_cnt ; 
 int /*<<< orphan*/  power_state_active_lock ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(void)
{
	int ret = 0;
	unsigned long flags;

	FUNC1(&power_state_active_lock, flags);
	if (power_state_active_cnt <= 0) {
		FUNC0("power state: unbalanced enable/disable calls\n");
		ret = -EINVAL;
		goto out;
	}

	power_state_active_cnt--;
out:
	FUNC2(&power_state_active_lock, flags);
	return ret;
}