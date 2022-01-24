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
struct omap_wdt_dev {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_wdt_dev*,unsigned int) ; 
 struct omap_wdt_dev* FUNC6 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdog,
				unsigned int timeout)
{
	struct omap_wdt_dev *wdev = FUNC6(wdog);

	FUNC0(&wdev->lock);
	FUNC2(wdev);
	FUNC5(wdev, timeout);
	FUNC3(wdev);
	FUNC4(wdev);
	wdog->timeout = timeout;
	FUNC1(&wdev->lock);

	return 0;
}