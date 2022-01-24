#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct bcm2835_wdt {int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct bcm2835_pm {int /*<<< orphan*/  base; } ;
struct TYPE_8__ {int /*<<< orphan*/  status; struct device* parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/ * bcm2835_power_off ; 
 struct bcm2835_wdt* bcm2835_power_off_wdt ; 
 scalar_t__ FUNC0 (struct bcm2835_wdt*) ; 
 TYPE_1__ bcm2835_wdt_wdd ; 
 struct bcm2835_pm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct bcm2835_wdt* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  heartbeat ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct bcm2835_wdt*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct bcm2835_pm *pm = FUNC1(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct bcm2835_wdt *wdt;
	int err;

	wdt = FUNC3(dev, sizeof(struct bcm2835_wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	FUNC6(&wdt->lock);

	wdt->base = pm->base;

	FUNC8(&bcm2835_wdt_wdd, wdt);
	FUNC7(&bcm2835_wdt_wdd, heartbeat, dev);
	FUNC9(&bcm2835_wdt_wdd, nowayout);
	bcm2835_wdt_wdd.parent = dev;
	if (FUNC0(wdt)) {
		/*
		 * The currently active timeout value (set by the
		 * bootloader) may be different from the module
		 * heartbeat parameter or the value in device
		 * tree. But we just need to set WDOG_HW_RUNNING,
		 * because then the framework will "immediately" ping
		 * the device, updating the timeout.
		 */
		FUNC5(WDOG_HW_RUNNING, &bcm2835_wdt_wdd.status);
	}

	FUNC10(&bcm2835_wdt_wdd, 128);

	FUNC11(&bcm2835_wdt_wdd);
	err = FUNC4(dev, &bcm2835_wdt_wdd);
	if (err)
		return err;

	if (pm_power_off == NULL) {
		pm_power_off = bcm2835_power_off;
		bcm2835_power_off_wdt = wdt;
	}

	FUNC2(dev, "Broadcom BCM2835 watchdog timer");
	return 0;
}