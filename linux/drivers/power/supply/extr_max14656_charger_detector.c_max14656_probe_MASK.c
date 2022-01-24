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
struct power_supply_config {struct max14656_chip* drv_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct max14656_chip {int irq; int /*<<< orphan*/  irq_work; int /*<<< orphan*/  detect_psy; TYPE_1__ psy_desc; scalar_t__ online; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX14656_NAME ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct max14656_chip*) ; 
 struct max14656_chip* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,TYPE_1__*,struct power_supply_config*) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct max14656_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max14656_battery_props ; 
 int /*<<< orphan*/  max14656_get_property ; 
 int FUNC10 (struct max14656_chip*) ; 
 int /*<<< orphan*/  max14656_irq ; 
 int /*<<< orphan*/  max14656_irq_worker ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_irq_work ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct power_supply_config psy_cfg = {};
	struct max14656_chip *chip;
	int irq = client->irq;
	int ret = 0;

	if (irq <= 0) {
		FUNC3(dev, "invalid irq number: %d\n", irq);
		return -ENODEV;
	}

	if (!FUNC9(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC3(dev, "No support for SMBUS_BYTE_DATA\n");
		return -ENODEV;
	}

	chip = FUNC5(dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	psy_cfg.drv_data = chip;
	chip->client = client;
	chip->online = 0;
	chip->psy_desc.name = MAX14656_NAME;
	chip->psy_desc.type = POWER_SUPPLY_TYPE_UNKNOWN;
	chip->psy_desc.properties = max14656_battery_props;
	chip->psy_desc.num_properties = FUNC0(max14656_battery_props);
	chip->psy_desc.get_property = max14656_get_property;
	chip->irq = irq;

	ret = FUNC10(chip);
	if (ret)
		return -ENODEV;

	chip->detect_psy = FUNC6(dev,
		       &chip->psy_desc, &psy_cfg);
	if (FUNC2(chip->detect_psy)) {
		FUNC3(dev, "power_supply_register failed\n");
		return -EINVAL;
	}

	FUNC1(&chip->irq_work, max14656_irq_worker);
	ret = FUNC4(dev, stop_irq_work, chip);
	if (ret) {
		FUNC3(dev, "devm_add_action %d failed\n", ret);
		return ret;
	}

	ret = FUNC7(dev, chip->irq, max14656_irq,
			       IRQF_TRIGGER_FALLING,
			       MAX14656_NAME, chip);
	if (ret) {
		FUNC3(dev, "request_irq %d failed\n", chip->irq);
		return -EINVAL;
	}
	FUNC8(chip->irq);

	FUNC12(&chip->irq_work, FUNC11(2000));

	return 0;
}