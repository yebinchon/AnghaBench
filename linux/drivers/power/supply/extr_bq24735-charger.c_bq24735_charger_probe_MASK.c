#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct power_supply_desc {char* name; int /*<<< orphan*/  property_is_writeable; int /*<<< orphan*/  set_property; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; } ;
struct power_supply_config {struct bq24735* drv_data; scalar_t__ of_node; int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_10__ {scalar_t__ of_node; TYPE_9__* platform_data; } ;
struct i2c_client {int irq; TYPE_1__ dev; } ;
struct bq24735 {int charging; int /*<<< orphan*/  poll_interval; int /*<<< orphan*/  poll; int /*<<< orphan*/  charger; int /*<<< orphan*/  status_gpio; TYPE_9__* pdata; struct power_supply_desc charger_desc; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BQ24735_DEVICE_ID ; 
 int /*<<< orphan*/  BQ24735_MANUFACTURER_ID ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_MAINS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bq24735_charger_get_property ; 
 scalar_t__ FUNC5 (struct bq24735*) ; 
 int /*<<< orphan*/  bq24735_charger_isr ; 
 int /*<<< orphan*/  bq24735_charger_properties ; 
 int /*<<< orphan*/  bq24735_charger_property_is_writeable ; 
 int /*<<< orphan*/  bq24735_charger_set_property ; 
 int FUNC6 (struct bq24735*) ; 
 TYPE_9__* FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  bq24735_poll ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct bq24735* FUNC14 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,struct power_supply_desc*,struct power_supply_config*) ; 
 int FUNC16 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_client*,struct bq24735*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(struct i2c_client *client,
				 const struct i2c_device_id *id)
{
	int ret;
	struct bq24735 *charger;
	struct power_supply_desc *supply_desc;
	struct power_supply_config psy_cfg = {};
	char *name;

	charger = FUNC14(&client->dev, sizeof(*charger), GFP_KERNEL);
	if (!charger)
		return -ENOMEM;

	FUNC19(&charger->lock);
	charger->charging = true;
	charger->pdata = client->dev.platform_data;

	if (FUNC2(CONFIG_OF) && !charger->pdata && client->dev.of_node)
		charger->pdata = FUNC7(client);

	if (!charger->pdata) {
		FUNC9(&client->dev, "no platform data provided\n");
		return -EINVAL;
	}

	name = (char *)charger->pdata->name;
	if (!name) {
		name = FUNC13(&client->dev, GFP_KERNEL,
				      "bq24735@%s",
				      FUNC10(&client->dev));
		if (!name) {
			FUNC9(&client->dev, "Failed to alloc device name\n");
			return -ENOMEM;
		}
	}

	charger->client = client;

	supply_desc = &charger->charger_desc;

	supply_desc->name = name;
	supply_desc->type = POWER_SUPPLY_TYPE_MAINS;
	supply_desc->properties = bq24735_charger_properties;
	supply_desc->num_properties = FUNC0(bq24735_charger_properties);
	supply_desc->get_property = bq24735_charger_get_property;
	supply_desc->set_property = bq24735_charger_set_property;
	supply_desc->property_is_writeable =
				bq24735_charger_property_is_writeable;

	psy_cfg.supplied_to = charger->pdata->supplied_to;
	psy_cfg.num_supplicants = charger->pdata->num_supplicants;
	psy_cfg.of_node = client->dev.of_node;
	psy_cfg.drv_data = charger;

	FUNC17(client, charger);

	charger->status_gpio = FUNC12(&client->dev,
						       "ti,ac-detect",
						       GPIOD_IN);
	if (FUNC3(charger->status_gpio)) {
		ret = FUNC4(charger->status_gpio);
		FUNC9(&client->dev, "Getting gpio failed: %d\n", ret);
		return ret;
	}

	if (FUNC5(charger)) {
		ret = FUNC8(client, BQ24735_MANUFACTURER_ID);
		if (ret < 0) {
			FUNC9(&client->dev, "Failed to read manufacturer id : %d\n",
				ret);
			return ret;
		} else if (ret != 0x0040) {
			FUNC9(&client->dev,
				"manufacturer id mismatch. 0x0040 != 0x%04x\n", ret);
			return -ENODEV;
		}

		ret = FUNC8(client, BQ24735_DEVICE_ID);
		if (ret < 0) {
			FUNC9(&client->dev, "Failed to read device id : %d\n", ret);
			return ret;
		} else if (ret != 0x000B) {
			FUNC9(&client->dev,
				"device id mismatch. 0x000b != 0x%04x\n", ret);
			return -ENODEV;
		}

		ret = FUNC6(charger);
		if (ret < 0) {
			FUNC9(&client->dev, "Failed to enable charging\n");
			return ret;
		}
	}

	charger->charger = FUNC15(&client->dev, supply_desc,
						      &psy_cfg);
	if (FUNC3(charger->charger)) {
		ret = FUNC4(charger->charger);
		FUNC9(&client->dev, "Failed to register power supply: %d\n",
			ret);
		return ret;
	}

	if (client->irq) {
		ret = FUNC16(&client->dev, client->irq,
						NULL, bq24735_charger_isr,
						IRQF_TRIGGER_RISING |
						IRQF_TRIGGER_FALLING |
						IRQF_ONESHOT,
						supply_desc->name,
						charger->charger);
		if (ret) {
			FUNC9(&client->dev,
				"Unable to register IRQ %d err %d\n",
				client->irq, ret);
			return ret;
		}
	} else {
		ret = FUNC11(&client->dev, "poll-interval",
					       &charger->poll_interval);
		if (ret)
			return 0;
		if (!charger->poll_interval)
			return 0;

		FUNC1(&charger->poll, bq24735_poll);
		FUNC20(&charger->poll,
				      FUNC18(charger->poll_interval));
	}

	return 0;
}