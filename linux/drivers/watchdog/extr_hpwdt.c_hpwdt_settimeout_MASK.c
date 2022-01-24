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
struct watchdog_device {unsigned int timeout; unsigned int pretimeout; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device*) ; 
 scalar_t__ pretimeout ; 
 scalar_t__ FUNC3 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd, unsigned int val)
{
	FUNC0(wdd->parent, "set_timeout = %d\n", val);

	wdd->timeout = val;
	if (val <= wdd->pretimeout) {
		FUNC0(wdd->parent, "pretimeout < timeout. Setting to zero\n");
		wdd->pretimeout = 0;
		pretimeout = 0;
		if (FUNC3(wdd))
			FUNC2(wdd);
	}
	FUNC1(wdd);

	return 0;
}