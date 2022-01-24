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
struct watchdog_device {int dummy; } ;
struct omap_wdt_dev {int omap_wdt_users; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_wdt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct omap_wdt_dev* FUNC4 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdog)
{
	struct omap_wdt_dev *wdev = FUNC4(wdog);

	FUNC0(&wdev->lock);
	FUNC2(wdev);
	FUNC3(wdev->dev);
	wdev->omap_wdt_users = false;
	FUNC1(&wdev->lock);
	return 0;
}