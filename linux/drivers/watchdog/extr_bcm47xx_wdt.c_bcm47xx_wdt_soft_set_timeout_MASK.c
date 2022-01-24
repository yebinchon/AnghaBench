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
struct watchdog_device {unsigned int timeout; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int WDT_SOFTTIMER_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC1(struct watchdog_device *wdd,
					unsigned int new_time)
{
	if (new_time < 1 || new_time > WDT_SOFTTIMER_MAX) {
		FUNC0("timeout value must be 1<=x<=%d, using %d\n",
			WDT_SOFTTIMER_MAX, new_time);
		return -EINVAL;
	}

	wdd->timeout = new_time;
	return 0;
}