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
struct watchdog_device {struct device* parent; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * info; int /*<<< orphan*/  timeout; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct da9052_wdt_data {struct watchdog_device wdt; struct da9052* da9052; } ;
struct da9052 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_CONTROLD_TWDSCALE ; 
 int /*<<< orphan*/  DA9052_CONTROL_D_REG ; 
 int /*<<< orphan*/  DA9052_DEF_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct da9052*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  da9052_wdt_info ; 
 int /*<<< orphan*/  da9052_wdt_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct da9052* FUNC2 (int /*<<< orphan*/ ) ; 
 struct da9052_wdt_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct watchdog_device*,struct da9052_wdt_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct da9052 *da9052 = FUNC2(dev->parent);
	struct da9052_wdt_data *driver_data;
	struct watchdog_device *da9052_wdt;
	int ret;

	driver_data = FUNC3(dev, sizeof(*driver_data), GFP_KERNEL);
	if (!driver_data)
		return -ENOMEM;
	driver_data->da9052 = da9052;

	da9052_wdt = &driver_data->wdt;

	da9052_wdt->timeout = DA9052_DEF_TIMEOUT;
	da9052_wdt->info = &da9052_wdt_info;
	da9052_wdt->ops = &da9052_wdt_ops;
	da9052_wdt->parent = dev;
	FUNC5(da9052_wdt, driver_data);

	ret = FUNC0(da9052, DA9052_CONTROL_D_REG,
				DA9052_CONTROLD_TWDSCALE, 0);
	if (ret < 0) {
		FUNC1(dev, "Failed to disable watchdog bits, %d\n", ret);
		return ret;
	}

	return FUNC4(dev, &driver_data->wdt);
}