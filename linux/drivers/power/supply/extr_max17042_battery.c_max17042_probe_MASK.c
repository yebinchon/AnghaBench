#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct power_supply_desc {int dummy; } ;
struct power_supply_config {int /*<<< orphan*/  of_node; struct max17042_chip* drv_data; } ;
struct max17042_chip {int init_complete; int /*<<< orphan*/  work; TYPE_4__* regmap; TYPE_4__* battery; TYPE_7__* pdata; int /*<<< orphan*/  chip_type; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int /*<<< orphan*/  of_node; TYPE_1__* driver; } ;
struct i2c_client {struct device dev; scalar_t__ irq; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct acpi_device_id {int /*<<< orphan*/  driver_data; } ;
struct TYPE_16__ {scalar_t__ r_sns; int num_init_data; int /*<<< orphan*/  enable_current_sense; TYPE_2__* init_data; } ;
struct TYPE_15__ {TYPE_3__* desc; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int data; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ALRT_BIT_ENBL ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int IRQF_ONESHOT ; 
 unsigned int IRQF_PROBE_SHARED ; 
 unsigned int IRQF_SHARED ; 
 unsigned int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  MAX17042_CGAIN ; 
 int /*<<< orphan*/  MAX17042_CONFIG ; 
 scalar_t__ MAX17042_DEFAULT_SNS_RESISTOR ; 
 int /*<<< orphan*/  MAX17042_LearnCFG ; 
 int /*<<< orphan*/  MAX17042_MiscCFG ; 
 int /*<<< orphan*/  MAX17042_SALRT_Th ; 
 int /*<<< orphan*/  MAX17042_STATUS ; 
 int FUNC2 (TYPE_4__*) ; 
 int STATUS_POR_BIT ; 
 struct acpi_device_id* FUNC3 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct max17042_chip*) ; 
 struct max17042_chip* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (struct device*,struct power_supply_desc const*,struct power_supply_config*) ; 
 TYPE_4__* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct max17042_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct max17042_chip*) ; 
 TYPE_7__* FUNC12 (struct max17042_chip*) ; 
 int /*<<< orphan*/  max17042_init_worker ; 
 struct power_supply_desc max17042_no_current_sense_psy_desc ; 
 struct power_supply_desc max17042_psy_desc ; 
 int /*<<< orphan*/  max17042_regmap_config ; 
 int /*<<< orphan*/  FUNC13 (struct max17042_chip*,int) ; 
 int /*<<< orphan*/  max17042_stop_work ; 
 int /*<<< orphan*/  max17042_thread_handler ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	const struct power_supply_desc *max17042_desc = &max17042_psy_desc;
	struct power_supply_config psy_cfg = {};
	const struct acpi_device_id *acpi_id = NULL;
	struct device *dev = &client->dev;
	struct max17042_chip *chip;
	int ret;
	int i;
	u32 val;

	if (!FUNC10(adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -EIO;

	chip = FUNC6(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->client = client;
	if (id) {
		chip->chip_type = id->driver_data;
	} else {
		acpi_id = FUNC3(dev->driver->acpi_match_table, dev);
		if (!acpi_id)
			return -ENODEV;

		chip->chip_type = acpi_id->driver_data;
	}
	chip->regmap = FUNC8(client, &max17042_regmap_config);
	if (FUNC1(chip->regmap)) {
		FUNC4(&client->dev, "Failed to initialize regmap\n");
		return -EINVAL;
	}

	chip->pdata = FUNC12(chip);
	if (!chip->pdata) {
		FUNC4(&client->dev, "no platform data provided\n");
		return -EINVAL;
	}

	FUNC11(client, chip);
	psy_cfg.drv_data = chip;
	psy_cfg.of_node = dev->of_node;

	/* When current is not measured,
	 * CURRENT_NOW and CURRENT_AVG properties should be invisible. */
	if (!chip->pdata->enable_current_sense)
		max17042_desc = &max17042_no_current_sense_psy_desc;

	if (chip->pdata->r_sns == 0)
		chip->pdata->r_sns = MAX17042_DEFAULT_SNS_RESISTOR;

	if (chip->pdata->init_data)
		for (i = 0; i < chip->pdata->num_init_data; i++)
			FUNC16(chip->regmap,
					chip->pdata->init_data[i].addr,
					chip->pdata->init_data[i].data);

	if (!chip->pdata->enable_current_sense) {
		FUNC16(chip->regmap, MAX17042_CGAIN, 0x0000);
		FUNC16(chip->regmap, MAX17042_MiscCFG, 0x0003);
		FUNC16(chip->regmap, MAX17042_LearnCFG, 0x0007);
	}

	chip->battery = FUNC7(&client->dev, max17042_desc,
						   &psy_cfg);
	if (FUNC1(chip->battery)) {
		FUNC4(&client->dev, "failed: power supply register\n");
		return FUNC2(chip->battery);
	}

	if (client->irq) {
		unsigned int flags = IRQF_TRIGGER_FALLING | IRQF_ONESHOT;

		/*
		 * On ACPI systems the IRQ may be handled by ACPI-event code,
		 * so we need to share (if the ACPI code is willing to share).
		 */
		if (acpi_id)
			flags |= IRQF_SHARED | IRQF_PROBE_SHARED;

		ret = FUNC9(&client->dev, client->irq,
						NULL,
						max17042_thread_handler, flags,
						chip->battery->desc->name,
						chip);
		if (!ret) {
			FUNC15(chip->regmap, MAX17042_CONFIG,
					CONFIG_ALRT_BIT_ENBL,
					CONFIG_ALRT_BIT_ENBL);
			FUNC13(chip, 1);
		} else {
			client->irq = 0;
			if (ret != -EBUSY)
				FUNC4(&client->dev, "Failed to get IRQ\n");
		}
	}
	/* Not able to update the charge threshold when exceeded? -> disable */
	if (!client->irq)
		FUNC16(chip->regmap, MAX17042_SALRT_Th, 0xff00);

	FUNC14(chip->regmap, MAX17042_STATUS, &val);
	if (val & STATUS_POR_BIT) {
		FUNC0(&chip->work, max17042_init_worker);
		ret = FUNC5(&client->dev, max17042_stop_work, chip);
		if (ret)
			return ret;
		FUNC17(&chip->work);
	} else {
		chip->init_complete = 1;
	}

	return 0;
}