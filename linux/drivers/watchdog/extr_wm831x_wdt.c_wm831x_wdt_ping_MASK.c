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
typedef  int u16 ;
struct wm831x_wdt_drvdata {int update_state; int /*<<< orphan*/  lock; scalar_t__ update_gpio; struct wm831x* wm831x; } ;
struct wm831x {int /*<<< orphan*/  dev; } ;
struct watchdog_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WM831X_WATCHDOG ; 
 int WM831X_WDOG_RESET ; 
 int WM831X_WDOG_RST_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wm831x_wdt_drvdata* FUNC4 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct wm831x*) ; 
 int FUNC6 (struct wm831x*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct wm831x*) ; 
 int FUNC8 (struct wm831x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct watchdog_device *wdt_dev)
{
	struct wm831x_wdt_drvdata *driver_data = FUNC4(wdt_dev);
	struct wm831x *wm831x = driver_data->wm831x;
	int ret;
	u16 reg;

	FUNC2(&driver_data->lock);

	if (driver_data->update_gpio) {
		FUNC1(driver_data->update_gpio,
					driver_data->update_state);
		driver_data->update_state = !driver_data->update_state;
		ret = 0;
		goto out;
	}

	reg = FUNC6(wm831x, WM831X_WATCHDOG);

	if (!(reg & WM831X_WDOG_RST_SRC)) {
		FUNC0(wm831x->dev, "Hardware watchdog update unsupported\n");
		ret = -EINVAL;
		goto out;
	}

	reg |= WM831X_WDOG_RESET;

	ret = FUNC7(wm831x);
	if (ret == 0) {
		ret = FUNC8(wm831x, WM831X_WATCHDOG, reg);
		FUNC5(wm831x);
	} else {
		FUNC0(wm831x->dev, "Failed to unlock security key: %d\n",
			ret);
	}

out:
	FUNC3(&driver_data->lock);

	return ret;
}