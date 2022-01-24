#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bcm_kona_wdt {int /*<<< orphan*/  resolution; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {struct device* parent; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SECWDOG_DEFAULT_RESOLUTION ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int FUNC2 (struct bcm_kona_wdt*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ bcm_kona_wdt_wdd ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,...) ; 
 struct bcm_kona_wdt* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct bcm_kona_wdt*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,struct bcm_kona_wdt*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm_kona_wdt *wdt;
	int ret;

	wdt = FUNC6(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	FUNC10(&wdt->lock);

	wdt->base = FUNC7(pdev, 0);
	if (FUNC0(wdt->base))
		return -ENODEV;

	wdt->resolution = SECWDOG_DEFAULT_RESOLUTION;
	ret = FUNC2(wdt);
	if (ret) {
		FUNC5(dev, "Failed to set resolution (error: %d)", ret);
		return ret;
	}

	FUNC9(pdev, wdt);
	FUNC11(&bcm_kona_wdt_wdd, wdt);
	bcm_kona_wdt_wdd.parent = dev;

	ret = FUNC3(&bcm_kona_wdt_wdd, 0);
	if (ret) {
		FUNC5(dev, "Failed set watchdog timeout");
		return ret;
	}

	FUNC12(&bcm_kona_wdt_wdd);
	FUNC13(&bcm_kona_wdt_wdd);
	ret = FUNC8(dev, &bcm_kona_wdt_wdd);
	if (ret)
		return ret;

	FUNC1(pdev);
	FUNC4(dev, "Broadcom Kona Watchdog Timer");

	return 0;
}