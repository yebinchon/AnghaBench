#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ux500_wdt_data {scalar_t__ timeout; scalar_t__ has_28_bits_resolution; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {struct device* parent; int /*<<< orphan*/  max_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRCMU_WDOG_ALL ; 
 int /*<<< orphan*/  PRCMU_WDOG_CPU1 ; 
 int /*<<< orphan*/  WATCHDOG_MAX28 ; 
 struct ux500_wdt_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int timeout ; 
 TYPE_1__ ux500_wdt ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret;
	struct ux500_wdt_data *pdata = FUNC0(dev);

	if (pdata) {
		if (pdata->timeout > 0)
			timeout = pdata->timeout;
		if (pdata->has_28_bits_resolution)
			ux500_wdt.max_timeout = WATCHDOG_MAX28;
	}

	ux500_wdt.parent = dev;
	FUNC5(&ux500_wdt, nowayout);

	/* disable auto off on sleep */
	FUNC3(PRCMU_WDOG_CPU1, false);

	/* set HW initial value */
	FUNC4(PRCMU_WDOG_ALL, timeout * 1000);

	ret = FUNC2(dev, &ux500_wdt);
	if (ret)
		return ret;

	FUNC1(dev, "initialized\n");

	return 0;
}