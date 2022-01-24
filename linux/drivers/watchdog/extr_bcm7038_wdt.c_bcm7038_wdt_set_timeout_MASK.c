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
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdog,
				   unsigned int t)
{
	/* Can't modify timeout value if watchdog timer is running */
	FUNC1(wdog);
	wdog->timeout = t;
	FUNC0(wdog);

	return 0;
}