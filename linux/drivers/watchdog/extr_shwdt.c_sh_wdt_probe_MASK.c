#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  expires; } ;
struct sh_wdt {TYPE_4__ timer; int /*<<< orphan*/  lock; int /*<<< orphan*/ * base; int /*<<< orphan*/ * clk; int /*<<< orphan*/ * dev; } ;
struct platform_device {int id; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WATCHDOG_HEARTBEAT ; 
 int /*<<< orphan*/  clock_division_ratio ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct sh_wdt* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ sh_wdt_dev ; 
 int /*<<< orphan*/  sh_wdt_ping ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct sh_wdt*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct sh_wdt *wdt;
	int rc;

	/*
	 * As this driver only covers the global watchdog case, reject
	 * any attempts to register per-CPU watchdogs.
	 */
	if (pdev->id != -1)
		return -EINVAL;

	wdt = FUNC6(&pdev->dev, sizeof(struct sh_wdt), GFP_KERNEL);
	if (FUNC13(!wdt))
		return -ENOMEM;

	wdt->dev = &pdev->dev;

	wdt->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC0(wdt->clk)) {
		/*
		 * Clock framework support is optional, continue on
		 * anyways if we don't find a matching clock.
		 */
		wdt->clk = NULL;
	}

	wdt->base = FUNC7(pdev, 0);
	if (FUNC0(wdt->base))
		return FUNC1(wdt->base);

	FUNC16(&sh_wdt_dev, nowayout);
	FUNC15(&sh_wdt_dev, wdt);
	sh_wdt_dev.parent = &pdev->dev;

	FUNC11(&wdt->lock);

	rc = FUNC10(&sh_wdt_dev, heartbeat);
	if (FUNC13(rc)) {
		/* Default timeout if invalid */
		FUNC10(&sh_wdt_dev, WATCHDOG_HEARTBEAT);

		FUNC4(&pdev->dev,
			 "heartbeat value must be 1<=x<=3600, using %d\n",
			 sh_wdt_dev.timeout);
	}

	FUNC3(&pdev->dev, "configured with heartbeat=%d sec (nowayout=%d)\n",
		 sh_wdt_dev.timeout, nowayout);

	rc = FUNC14(&sh_wdt_dev);
	if (FUNC13(rc)) {
		FUNC2(&pdev->dev, "Can't register watchdog (err=%d)\n", rc);
		return rc;
	}

	FUNC12(&wdt->timer, sh_wdt_ping, 0);
	wdt->timer.expires	= FUNC8(clock_division_ratio);

	FUNC3(&pdev->dev, "initialized.\n");

	FUNC9(&pdev->dev);

	return 0;
}