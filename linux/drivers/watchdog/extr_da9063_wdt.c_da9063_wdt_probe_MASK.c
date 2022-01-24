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
struct watchdog_device {int /*<<< orphan*/  status; int /*<<< orphan*/  timeout; struct device* parent; int /*<<< orphan*/  min_hw_heartbeat_ms; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct da9063 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9063_RESET_PROTECTION_MS ; 
 int /*<<< orphan*/  DA9063_WDG_TIMEOUT ; 
 int /*<<< orphan*/  DA9063_WDT_MAX_TIMEOUT ; 
 int /*<<< orphan*/  DA9063_WDT_MIN_TIMEOUT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT_INIT_STATUS ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  da9063_watchdog_info ; 
 int /*<<< orphan*/  da9063_watchdog_ops ; 
 scalar_t__ FUNC0 (struct da9063*) ; 
 int /*<<< orphan*/  FUNC1 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct da9063*,int /*<<< orphan*/ ) ; 
 struct da9063* FUNC3 (int /*<<< orphan*/ ) ; 
 struct watchdog_device* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct watchdog_device*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,struct da9063*) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9063 *da9063;
	struct watchdog_device *wdd;

	if (!dev->parent)
		return -EINVAL;

	da9063 = FUNC3(dev->parent);
	if (!da9063)
		return -EINVAL;

	wdd = FUNC4(dev, sizeof(*wdd), GFP_KERNEL);
	if (!wdd)
		return -ENOMEM;

	wdd->info = &da9063_watchdog_info;
	wdd->ops = &da9063_watchdog_ops;
	wdd->min_timeout = DA9063_WDT_MIN_TIMEOUT;
	wdd->max_timeout = DA9063_WDT_MAX_TIMEOUT;
	wdd->min_hw_heartbeat_ms = DA9063_RESET_PROTECTION_MS;
	wdd->parent = dev;
	wdd->status = WATCHDOG_NOWAYOUT_INIT_STATUS;

	FUNC9(wdd, 128);
	FUNC8(wdd, da9063);

	/* Set default timeout, maybe override it with DT value, scale it */
	wdd->timeout = DA9063_WDG_TIMEOUT;
	FUNC7(wdd, 0, dev);
	FUNC1(wdd, wdd->timeout);

	/* Change the timeout to the default value if the watchdog is running */
	if (FUNC0(da9063)) {
		FUNC2(da9063, wdd->timeout);
		FUNC6(WDOG_HW_RUNNING, &wdd->status);
	}

	return FUNC5(dev, wdd);
}