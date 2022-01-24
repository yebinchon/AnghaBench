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
struct power_supply_config {struct max77650_charger_data* drv_data; int /*<<< orphan*/  of_node; } ;
struct power_supply {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77650_charger_data {struct device* dev; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (struct power_supply*) ; 
 int FUNC1 (struct power_supply*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *) ; 
 struct max77650_charger_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct power_supply* FUNC4 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int FUNC5 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct max77650_charger_data*) ; 
 int /*<<< orphan*/  max77650_battery_desc ; 
 int /*<<< orphan*/  max77650_charger_check_status ; 
 int FUNC6 (struct max77650_charger_data*) ; 
 int FUNC7 (struct max77650_charger_data*,unsigned int) ; 
 int FUNC8 (struct max77650_charger_data*,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*,unsigned int*) ; 
 int FUNC10 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct max77650_charger_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct power_supply_config pscfg = {};
	struct max77650_charger_data *chg;
	struct power_supply *battery;
	struct device *dev, *parent;
	int rv, chg_irq, chgin_irq;
	unsigned int prop;

	dev = &pdev->dev;
	parent = dev->parent;

	chg = FUNC3(dev, sizeof(*chg), GFP_KERNEL);
	if (!chg)
		return -ENOMEM;

	FUNC11(pdev, chg);

	chg->map = FUNC2(parent, NULL);
	if (!chg->map)
		return -ENODEV;

	chg->dev = dev;

	pscfg.of_node = dev->of_node;
	pscfg.drv_data = chg;

	chg_irq = FUNC10(pdev, "CHG");
	if (chg_irq < 0)
		return chg_irq;

	chgin_irq = FUNC10(pdev, "CHGIN");
	if (chgin_irq < 0)
		return chgin_irq;

	rv = FUNC5(dev, chg_irq,
					  max77650_charger_check_status,
					  IRQF_ONESHOT, "chg", chg);
	if (rv < 0)
		return rv;

	rv = FUNC5(dev, chgin_irq,
					  max77650_charger_check_status,
					  IRQF_ONESHOT, "chgin", chg);
	if (rv < 0)
		return rv;

	battery = FUNC4(dev,
					     &max77650_battery_desc, &pscfg);
	if (FUNC0(battery))
		return FUNC1(battery);

	rv = FUNC9(dev->of_node,
				  "input-voltage-min-microvolt", &prop);
	if (rv == 0) {
		rv = FUNC8(chg, prop);
		if (rv)
			return rv;
	}

	rv = FUNC9(dev->of_node,
				  "input-current-limit-microamp", &prop);
	if (rv == 0) {
		rv = FUNC7(chg, prop);
		if (rv)
			return rv;
	}

	return FUNC6(chg);
}