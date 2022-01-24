#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct power_supply_desc {int num_properties; scalar_t__ name; int /*<<< orphan*/  type; int /*<<< orphan*/  get_property; int /*<<< orphan*/  properties; } ;
struct power_supply_config {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; struct gpio_charger* drv_data; TYPE_1__* of_node; } ;
struct device {TYPE_1__* of_node; struct gpio_charger_platform_data* platform_data; } ;
struct platform_device {scalar_t__ name; struct device dev; } ;
struct gpio_desc {int dummy; } ;
struct gpio_charger_platform_data {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; int /*<<< orphan*/  type; scalar_t__ name; int /*<<< orphan*/  gpio; scalar_t__ gpio_active_low; } ;
struct gpio_charger {int charge_status_irq; struct gpio_desc* charge_status; struct gpio_desc* charger; struct gpio_desc* gpiod; void* irq; struct power_supply_desc charger_desc; } ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 unsigned long GPIOF_ACTIVE_LOW ; 
 unsigned long GPIOF_IN ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC7 (struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC8 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_charger* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC10 (struct device*,struct power_supply_desc*,struct power_supply_config*) ; 
 void* FUNC11 (struct device*,struct gpio_desc*,struct gpio_desc*) ; 
 int /*<<< orphan*/  gpio_charger_get_property ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 
 int /*<<< orphan*/  gpio_charger_properties ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct gpio_charger*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const struct gpio_charger_platform_data *pdata = dev->platform_data;
	struct power_supply_config psy_cfg = {};
	struct gpio_charger *gpio_charger;
	struct power_supply_desc *charger_desc;
	struct gpio_desc *charge_status;
	int charge_status_irq;
	unsigned long flags;
	int ret;

	if (!pdata && !dev->of_node) {
		FUNC3(dev, "No platform data\n");
		return -ENOENT;
	}

	gpio_charger = FUNC9(dev, sizeof(*gpio_charger), GFP_KERNEL);
	if (!gpio_charger)
		return -ENOMEM;

	/*
	 * This will fetch a GPIO descriptor from device tree, ACPI or
	 * boardfile descriptor tables. It's good to try this first.
	 */
	gpio_charger->gpiod = FUNC7(dev, NULL, GPIOD_IN);

	/*
	 * If this fails and we're not using device tree, try the
	 * legacy platform data method.
	 */
	if (FUNC1(gpio_charger->gpiod) && !dev->of_node) {
		/* Non-DT: use legacy GPIO numbers */
		if (!FUNC13(pdata->gpio)) {
			FUNC3(dev, "Invalid gpio pin in pdata\n");
			return -EINVAL;
		}
		flags = GPIOF_IN;
		if (pdata->gpio_active_low)
			flags |= GPIOF_ACTIVE_LOW;
		ret = FUNC6(dev, pdata->gpio, flags,
					    FUNC4(dev));
		if (ret) {
			FUNC3(dev, "Failed to request gpio pin: %d\n", ret);
			return ret;
		}
		/* Then convert this to gpiod for now */
		gpio_charger->gpiod = FUNC14(pdata->gpio);
	} else if (FUNC1(gpio_charger->gpiod)) {
		/* Just try again if this happens */
		if (FUNC2(gpio_charger->gpiod) == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		FUNC3(dev, "error getting GPIO descriptor\n");
		return FUNC2(gpio_charger->gpiod);
	}

	charge_status = FUNC8(dev, "charge-status", GPIOD_IN);
	gpio_charger->charge_status = charge_status;
	if (FUNC1(gpio_charger->charge_status))
		return FUNC2(gpio_charger->charge_status);

	charger_desc = &gpio_charger->charger_desc;
	charger_desc->properties = gpio_charger_properties;
	charger_desc->num_properties = FUNC0(gpio_charger_properties);
	/* Remove POWER_SUPPLY_PROP_STATUS from the supported properties. */
	if (!gpio_charger->charge_status)
		charger_desc->num_properties -= 1;
	charger_desc->get_property = gpio_charger_get_property;

	psy_cfg.of_node = dev->of_node;
	psy_cfg.drv_data = gpio_charger;

	if (pdata) {
		charger_desc->name = pdata->name;
		charger_desc->type = pdata->type;
		psy_cfg.supplied_to = pdata->supplied_to;
		psy_cfg.num_supplicants = pdata->num_supplicants;
	} else {
		charger_desc->name = dev->of_node->name;
		charger_desc->type = FUNC12(dev);
	}

	if (!charger_desc->name)
		charger_desc->name = pdev->name;

	gpio_charger->charger = FUNC10(dev, charger_desc,
							   &psy_cfg);
	if (FUNC1(gpio_charger->charger)) {
		ret = FUNC2(gpio_charger->charger);
		FUNC3(dev, "Failed to register power supply: %d\n", ret);
		return ret;
	}

	gpio_charger->irq = FUNC11(dev, gpio_charger->charger,
						 gpio_charger->gpiod);

	charge_status_irq = FUNC11(dev, gpio_charger->charger,
						 gpio_charger->charge_status);
	gpio_charger->charge_status_irq = charge_status_irq;

	FUNC15(pdev, gpio_charger);

	FUNC5(dev, 1);

	return 0;
}