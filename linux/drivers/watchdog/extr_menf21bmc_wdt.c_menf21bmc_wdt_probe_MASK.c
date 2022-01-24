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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {struct device* parent; int /*<<< orphan*/  max_timeout; int /*<<< orphan*/  min_timeout; int /*<<< orphan*/ * info; int /*<<< orphan*/ * ops; } ;
struct menf21bmc_wdt {TYPE_1__ wdt; struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMC_CMD_WD_TIME ; 
 int /*<<< orphan*/  BMC_WD_TIMEOUT_MAX ; 
 int /*<<< orphan*/  BMC_WD_TIMEOUT_MIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct menf21bmc_wdt* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  menf21bmc_wdt_info ; 
 int /*<<< orphan*/  menf21bmc_wdt_ops ; 
 int FUNC5 (struct menf21bmc_wdt*) ; 
 int /*<<< orphan*/  nowayout ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct menf21bmc_wdt*) ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,struct device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct menf21bmc_wdt*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret, bmc_timeout;
	struct menf21bmc_wdt *drv_data;
	struct i2c_client *i2c_client = FUNC7(dev->parent);

	drv_data = FUNC2(dev, sizeof(struct menf21bmc_wdt), GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	drv_data->wdt.ops = &menf21bmc_wdt_ops;
	drv_data->wdt.info = &menf21bmc_wdt_info;
	drv_data->wdt.min_timeout = BMC_WD_TIMEOUT_MIN;
	drv_data->wdt.max_timeout = BMC_WD_TIMEOUT_MAX;
	drv_data->wdt.parent = dev;
	drv_data->i2c_client = i2c_client;

	/*
	 * Get the current wdt timeout value from the BMC because
	 * the BMC will save the value set before if the system restarts.
	 */
	bmc_timeout = FUNC4(drv_data->i2c_client,
					       BMC_CMD_WD_TIME);
	if (bmc_timeout < 0) {
		FUNC0(dev, "failed to get current WDT timeout\n");
		return bmc_timeout;
	}

	FUNC8(&drv_data->wdt, bmc_timeout / 10, dev);
	FUNC10(&drv_data->wdt, nowayout);
	FUNC9(&drv_data->wdt, drv_data);
	FUNC6(pdev, drv_data);

	ret = FUNC5(drv_data);
	if (ret < 0) {
		FUNC0(dev, "failed to set Watchdog bootstatus\n");
		return ret;
	}

	ret = FUNC3(dev, &drv_data->wdt);
	if (ret)
		return ret;

	FUNC1(dev, "MEN 14F021P00 BMC Watchdog device enabled\n");

	return 0;
}