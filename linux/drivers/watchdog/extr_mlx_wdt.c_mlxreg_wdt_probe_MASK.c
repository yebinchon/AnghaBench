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
struct TYPE_7__ {int /*<<< orphan*/  status; struct device* parent; } ;
struct mlxreg_wdt {TYPE_1__ wdd; int /*<<< orphan*/  regmap; } ;
struct mlxreg_core_platform_data {int features; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLXREG_CORE_WD_FEATURE_NOWAYOUT ; 
 int MLXREG_CORE_WD_FEATURE_START_AT_BOOT ; 
 int /*<<< orphan*/  WATCHDOG_NOWAYOUT ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct mlxreg_core_platform_data* FUNC1 (struct device*) ; 
 struct mlxreg_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxreg_wdt*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxreg_wdt*,struct mlxreg_core_platform_data*) ; 
 int FUNC6 (struct mlxreg_wdt*,struct mlxreg_core_platform_data*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct mlxreg_wdt*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mlxreg_core_platform_data *pdata;
	struct mlxreg_wdt *wdt;
	int rc;

	pdata = FUNC1(dev);
	if (!pdata) {
		FUNC0(dev, "Failed to get platform data.\n");
		return -EINVAL;
	}
	wdt = FUNC2(dev, sizeof(*wdt), GFP_KERNEL);
	if (!wdt)
		return -ENOMEM;

	wdt->wdd.parent = dev;
	wdt->regmap = pdata->regmap;
	FUNC5(wdt, pdata);

	if ((pdata->features & MLXREG_CORE_WD_FEATURE_NOWAYOUT))
		FUNC10(&wdt->wdd, WATCHDOG_NOWAYOUT);
	FUNC11(&wdt->wdd);
	FUNC12(&wdt->wdd);
	FUNC9(&wdt->wdd, wdt);
	rc = FUNC6(wdt, pdata);
	if (rc)
		goto register_error;

	if ((pdata->features & MLXREG_CORE_WD_FEATURE_START_AT_BOOT)) {
		rc = FUNC7(&wdt->wdd);
		if (rc)
			goto register_error;
		FUNC8(WDOG_HW_RUNNING, &wdt->wdd.status);
	}
	FUNC4(wdt);
	rc = FUNC3(dev, &wdt->wdd);

register_error:
	if (rc)
		FUNC0(dev, "Cannot register watchdog device (err=%d)\n", rc);
	return rc;
}