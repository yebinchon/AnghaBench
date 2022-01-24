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
struct watchdog_device {int timeout; int min_timeout; int max_timeout; struct device* parent; scalar_t__ status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct watchdog_device* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  twl4030_wdt_info ; 
 int /*<<< orphan*/  twl4030_wdt_ops ; 
 int /*<<< orphan*/  FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct watchdog_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdt;

	wdt = FUNC0(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->info		= &twl4030_wdt_info;
	wdt->ops		= &twl4030_wdt_ops;
	wdt->status		= 0;
	wdt->timeout		= 30;
	wdt->min_timeout	= 1;
	wdt->max_timeout	= 30;
	wdt->parent = dev;

	FUNC4(wdt, nowayout);
	FUNC2(pdev, wdt);

	FUNC3(wdt);

	return FUNC1(dev, wdt);
}