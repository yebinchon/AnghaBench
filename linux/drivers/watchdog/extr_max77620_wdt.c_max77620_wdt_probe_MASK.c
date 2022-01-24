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
struct watchdog_device {int min_timeout; int max_timeout; int max_hw_heartbeat_ms; int timeout; int /*<<< orphan*/  status; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct max77620_wdt {struct device* dev; int /*<<< orphan*/  rmap; struct watchdog_device wdt_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX77620_ONOFFCNFG2_WD_RST_WK ; 
 int /*<<< orphan*/  MAX77620_REG_CNFGGLBL2 ; 
 int /*<<< orphan*/  MAX77620_REG_ONOFFCNFG2 ; 
#define  MAX77620_TWD_16s 130 
#define  MAX77620_TWD_2s 129 
#define  MAX77620_TWD_64s 128 
 unsigned int MAX77620_TWD_MASK ; 
 unsigned int MAX77620_WDTEN ; 
 int MAX77620_WDTOFFC ; 
 int MAX77620_WDTSLPC ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct max77620_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  max77620_wdt_info ; 
 int /*<<< orphan*/  max77620_wdt_ops ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct max77620_wdt*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct watchdog_device*,struct max77620_wdt*) ; 
 int /*<<< orphan*/  FUNC9 (struct watchdog_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct max77620_wdt *wdt;
	struct watchdog_device *wdt_dev;
	unsigned int regval;
	int ret;

	wdt = FUNC2(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->dev = dev;
	wdt->rmap = FUNC1(dev->parent, NULL);
	if (!wdt->rmap) {
		FUNC0(wdt->dev, "Failed to get parent regmap\n");
		return -ENODEV;
	}

	wdt_dev = &wdt->wdt_dev;
	wdt_dev->info = &max77620_wdt_info;
	wdt_dev->ops = &max77620_wdt_ops;
	wdt_dev->min_timeout = 2;
	wdt_dev->max_timeout = 128;
	wdt_dev->max_hw_heartbeat_ms = 128 * 1000;

	FUNC4(pdev, wdt);

	/* Enable WD_RST_WK - WDT expire results in a restart */
	ret = FUNC6(wdt->rmap, MAX77620_REG_ONOFFCNFG2,
				 MAX77620_ONOFFCNFG2_WD_RST_WK,
				 MAX77620_ONOFFCNFG2_WD_RST_WK);
	if (ret < 0) {
		FUNC0(wdt->dev, "Failed to set WD_RST_WK: %d\n", ret);
		return ret;
	}

	/* Set WDT clear in OFF and sleep mode */
	ret = FUNC6(wdt->rmap, MAX77620_REG_CNFGGLBL2,
				 MAX77620_WDTOFFC | MAX77620_WDTSLPC,
				 MAX77620_WDTOFFC | MAX77620_WDTSLPC);
	if (ret < 0) {
		FUNC0(wdt->dev, "Failed to set WDT OFF mode: %d\n", ret);
		return ret;
	}

	/* Check if WDT running and if yes then set flags properly */
	ret = FUNC5(wdt->rmap, MAX77620_REG_CNFGGLBL2, &regval);
	if (ret < 0) {
		FUNC0(wdt->dev, "Failed to read WDT CFG register: %d\n", ret);
		return ret;
	}

	switch (regval & MAX77620_TWD_MASK) {
	case MAX77620_TWD_2s:
		wdt_dev->timeout = 2;
		break;
	case MAX77620_TWD_16s:
		wdt_dev->timeout = 16;
		break;
	case MAX77620_TWD_64s:
		wdt_dev->timeout = 64;
		break;
	default:
		wdt_dev->timeout = 128;
		break;
	}

	if (regval & MAX77620_WDTEN)
		FUNC7(WDOG_HW_RUNNING, &wdt_dev->status);

	FUNC9(wdt_dev, nowayout);
	FUNC8(wdt_dev, wdt);

	FUNC10(wdt_dev);
	return FUNC3(dev, wdt_dev);
}