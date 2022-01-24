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
struct watchdog_device {int /*<<< orphan*/  status; int /*<<< orphan*/  timeout; } ;
struct imx2_wdt_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 scalar_t__ FUNC0 (struct imx2_wdt_device*) ; 
 int FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct imx2_wdt_device* FUNC5 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC6(struct watchdog_device *wdog)
{
	struct imx2_wdt_device *wdev = FUNC5(wdog);

	if (FUNC0(wdev))
		FUNC2(wdog, wdog->timeout);
	else
		FUNC3(wdog);

	FUNC4(WDOG_HW_RUNNING, &wdog->status);

	return FUNC1(wdog);
}