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
struct watchdog_device {scalar_t__ pretimeout; scalar_t__ timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SOFT_WATCHDOG_PRETIMEOUT ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  softdog_preticktock ; 
 int /*<<< orphan*/  softdog_ticktock ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *w)
{
	if (!FUNC2(&softdog_ticktock))
		FUNC1(THIS_MODULE);
	FUNC4(&softdog_ticktock, FUNC5(w->timeout, 0),
		      HRTIMER_MODE_REL);

	if (FUNC0(CONFIG_SOFT_WATCHDOG_PRETIMEOUT)) {
		if (w->pretimeout)
			FUNC4(&softdog_preticktock,
				      FUNC5(w->timeout - w->pretimeout, 0),
				      HRTIMER_MODE_REL);
		else
			FUNC3(&softdog_preticktock);
	}

	return 0;
}