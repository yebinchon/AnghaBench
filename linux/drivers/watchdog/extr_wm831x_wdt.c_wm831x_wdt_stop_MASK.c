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
struct wm831x_wdt_drvdata {int /*<<< orphan*/  lock; struct wm831x* wm831x; } ;
struct wm831x {int /*<<< orphan*/  dev; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM831X_WATCHDOG ; 
 int /*<<< orphan*/  WM831X_WDOG_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wm831x_wdt_drvdata* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct wm831x*) ; 
 int FUNC5 (struct wm831x*) ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdt_dev)
{
	struct wm831x_wdt_drvdata *driver_data = FUNC3(wdt_dev);
	struct wm831x *wm831x = driver_data->wm831x;
	int ret;

	FUNC1(&driver_data->lock);

	ret = FUNC5(wm831x);
	if (ret == 0) {
		ret = FUNC6(wm831x, WM831X_WATCHDOG,
				      WM831X_WDOG_ENA, 0);
		FUNC4(wm831x);
	} else {
		FUNC0(wm831x->dev, "Failed to unlock security key: %d\n",
			ret);
	}

	FUNC2(&driver_data->lock);

	return ret;
}