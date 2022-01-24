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
struct watchdog_device {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int FUNC0 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct watchdog_device *wdd)
{
	int ret;

	ret = FUNC0(wdd, true);
	if (!ret)
		FUNC1(WDOG_HW_RUNNING, &wdd->status);

	return ret;
}