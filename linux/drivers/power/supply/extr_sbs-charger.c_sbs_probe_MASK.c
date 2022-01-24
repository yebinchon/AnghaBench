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
struct sbs_info {int last_state; int /*<<< orphan*/  work; int /*<<< orphan*/  power_supply; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct power_supply_config {struct sbs_info* drv_data; int /*<<< orphan*/  of_node; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; TYPE_1__ dev; scalar_t__ irq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBS_CHARGER_POLL_TIME ; 
 int /*<<< orphan*/  SBS_CHARGER_REG_STATUS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct sbs_info* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sbs_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct sbs_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  sbs_delayed_work ; 
 int /*<<< orphan*/  sbs_desc ; 
 int /*<<< orphan*/  sbs_irq_thread ; 
 int /*<<< orphan*/  sbs_regmap ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
		     const struct i2c_device_id *id)
{
	struct power_supply_config psy_cfg = {};
	struct sbs_info *chip;
	int ret, val;

	chip = FUNC6(&client->dev, sizeof(struct sbs_info), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->client = client;
	psy_cfg.of_node = client->dev.of_node;
	psy_cfg.drv_data = chip;

	FUNC10(client, chip);

	chip->regmap = FUNC8(client, &sbs_regmap);
	if (FUNC1(chip->regmap))
		return FUNC2(chip->regmap);

	/*
	 * Before we register, we need to make sure we can actually talk
	 * to the battery.
	 */
	ret = FUNC12(chip->regmap, SBS_CHARGER_REG_STATUS, &val);
	if (ret) {
		FUNC3(&client->dev, "Failed to get device status\n");
		return ret;
	}
	chip->last_state = val;

	chip->power_supply = FUNC7(&client->dev, &sbs_desc,
							&psy_cfg);
	if (FUNC1(chip->power_supply)) {
		FUNC3(&client->dev, "Failed to register power supply\n");
		return FUNC2(chip->power_supply);
	}

	/*
	 * The sbs-charger spec doesn't impose the use of an interrupt. So in
	 * the case it wasn't provided we use polling in order get the charger's
	 * status.
	 */
	if (client->irq) {
		ret = FUNC9(&client->dev, client->irq,
					NULL, sbs_irq_thread,
					IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
					FUNC5(&client->dev), chip);
		if (ret) {
			FUNC3(&client->dev, "Failed to request irq, %d\n", ret);
			return ret;
		}
	} else {
		FUNC0(&chip->work, sbs_delayed_work);
		FUNC13(&chip->work,
				      FUNC11(SBS_CHARGER_POLL_TIME));
	}

	FUNC4(&client->dev,
		 "%s: smart charger device registered\n", client->name);

	return 0;
}