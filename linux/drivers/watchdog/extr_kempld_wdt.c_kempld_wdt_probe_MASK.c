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
typedef  int u8 ;
struct watchdog_device {int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; struct device* parent; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct kempld_wdt_data {struct watchdog_device wdd; struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KEMPLD_WDT_CFG ; 
 int KEMPLD_WDT_CFG_ENABLE ; 
 int KEMPLD_WDT_CFG_ENABLE_LOCK ; 
 int KEMPLD_WDT_CFG_GLOBAL_LOCK ; 
 struct kempld_device_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct kempld_wdt_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kempld_device_data*) ; 
 int FUNC6 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kempld_device_data*) ; 
 int /*<<< orphan*/  kempld_wdt_info ; 
 int /*<<< orphan*/  kempld_wdt_ops ; 
 int FUNC8 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kempld_wdt_data*) ; 
 int nowayout ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct kempld_wdt_data*) ; 
 int /*<<< orphan*/  pretimeout ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  FUNC13 (struct watchdog_device*,struct kempld_wdt_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct watchdog_device*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct kempld_device_data *pld = FUNC0(pdev->dev.parent);
	struct kempld_wdt_data *wdt_data;
	struct device *dev = &pdev->dev;
	struct watchdog_device *wdd;
	u8 status;
	int ret = 0;

	wdt_data = FUNC3(dev, sizeof(*wdt_data), GFP_KERNEL);
	if (!wdt_data)
		return -ENOMEM;

	wdt_data->pld = pld;
	wdd = &wdt_data->wdd;
	wdd->parent = dev;

	FUNC5(pld);
	status = FUNC6(pld, KEMPLD_WDT_CFG);
	FUNC7(pld);

	/* Enable nowayout if watchdog is already locked */
	if (status & (KEMPLD_WDT_CFG_ENABLE_LOCK |
			KEMPLD_WDT_CFG_GLOBAL_LOCK)) {
		if (!nowayout)
			FUNC2(dev,
				 "Forcing nowayout - watchdog lock enabled!\n");
		nowayout = true;
	}

	wdd->info = &kempld_wdt_info;
	wdd->ops = &kempld_wdt_ops;

	FUNC13(wdd, wdt_data);
	FUNC14(wdd, nowayout);

	ret = FUNC8(wdd);
	if (ret)
		return ret;

	FUNC10(wdd, timeout);
	FUNC9(wdd, pretimeout);

	/* Check if watchdog is already enabled */
	if (status & KEMPLD_WDT_CFG_ENABLE) {
		/* Get current watchdog settings */
		FUNC11(wdt_data);
		FUNC1(dev, "Watchdog was already enabled\n");
	}

	FUNC12(pdev, wdt_data);
	FUNC15(wdd);
	FUNC16(wdd);
	ret = FUNC4(dev, wdd);
	if (ret)
		return ret;

	FUNC1(dev, "Watchdog registered with %ds timeout\n", wdd->timeout);

	return 0;
}