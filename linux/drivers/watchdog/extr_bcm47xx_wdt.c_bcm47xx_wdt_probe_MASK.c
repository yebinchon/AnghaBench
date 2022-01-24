#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_6__* ops; int /*<<< orphan*/ * parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * info; } ;
struct bcm47xx_wdt {int max_timer_ms; int /*<<< orphan*/  soft_timer; TYPE_1__ wdd; } ;
struct TYPE_9__ {int (* set_timeout ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIME ; 
 int WDT_SOFTTIMER_THRESHOLD ; 
 TYPE_6__ bcm47xx_wdt_hard_ops ; 
 int /*<<< orphan*/  bcm47xx_wdt_info ; 
 TYPE_6__ bcm47xx_wdt_soft_ops ; 
 int /*<<< orphan*/  bcm47xx_wdt_soft_timer_tick ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bcm47xx_wdt* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ nowayout ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret;
	bool soft;
	struct bcm47xx_wdt *wdt = FUNC1(&pdev->dev);

	if (!wdt)
		return -ENXIO;

	soft = wdt->max_timer_ms < WDT_SOFTTIMER_THRESHOLD * 1000;

	if (soft) {
		wdt->wdd.ops = &bcm47xx_wdt_soft_ops;
		FUNC4(&wdt->soft_timer, bcm47xx_wdt_soft_timer_tick, 0);
	} else {
		wdt->wdd.ops = &bcm47xx_wdt_hard_ops;
	}

	wdt->wdd.info = &bcm47xx_wdt_info;
	wdt->wdd.timeout = WDT_DEFAULT_TIME;
	wdt->wdd.parent = &pdev->dev;
	ret = wdt->wdd.ops->set_timeout(&wdt->wdd, timeout);
	if (ret)
		goto err_timer;
	FUNC6(&wdt->wdd, nowayout);
	FUNC7(&wdt->wdd, 64);
	FUNC8(&wdt->wdd);

	ret = FUNC5(&wdt->wdd);
	if (ret)
		goto err_timer;

	FUNC2(&pdev->dev, "BCM47xx Watchdog Timer enabled (%d seconds%s%s)\n",
		timeout, nowayout ? ", nowayout" : "",
		soft ? ", Software Timer" : "");
	return 0;

err_timer:
	if (soft)
		FUNC0(&wdt->soft_timer);

	return ret;
}