#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int max_timeout; struct device* parent; int /*<<< orphan*/  timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct bcm7038_watchdog {int rate; TYPE_1__ wdd; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* WDT_DEFAULT_RATE ; 
 int /*<<< orphan*/  WDT_DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  WDT_MIN_TIMEOUT ; 
 int /*<<< orphan*/  bcm7038_clk_disable_unprepare ; 
 int /*<<< orphan*/  bcm7038_wdt_info ; 
 int /*<<< orphan*/  bcm7038_wdt_ops ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct bcm7038_watchdog* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct bcm7038_watchdog*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct bcm7038_watchdog*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm7038_watchdog *wdt;
	int err;

	wdt = FUNC7(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	FUNC10(pdev, wdt);

	wdt->base = FUNC8(pdev, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	wdt->clk = FUNC6(dev, NULL);
	/* If unable to get clock, use default frequency */
	if (!FUNC0(wdt->clk)) {
		err = FUNC3(wdt->clk);
		if (err)
			return err;
		err = FUNC5(dev,
					       bcm7038_clk_disable_unprepare,
					       wdt->clk);
		if (err)
			return err;
		wdt->rate = FUNC2(wdt->clk);
		/* Prevent divide-by-zero exception */
		if (!wdt->rate)
			wdt->rate = WDT_DEFAULT_RATE;
	} else {
		wdt->rate = WDT_DEFAULT_RATE;
		wdt->clk = NULL;
	}

	wdt->wdd.info		= &bcm7038_wdt_info;
	wdt->wdd.ops		= &bcm7038_wdt_ops;
	wdt->wdd.min_timeout	= WDT_MIN_TIMEOUT;
	wdt->wdd.timeout	= WDT_DEFAULT_TIMEOUT;
	wdt->wdd.max_timeout	= 0xffffffff / wdt->rate;
	wdt->wdd.parent		= dev;
	FUNC11(&wdt->wdd, wdt);

	FUNC12(&wdt->wdd);
	FUNC13(&wdt->wdd);
	err = FUNC9(dev, &wdt->wdd);
	if (err)
		return err;

	FUNC4(dev, "Registered BCM7038 Watchdog\n");

	return 0;
}