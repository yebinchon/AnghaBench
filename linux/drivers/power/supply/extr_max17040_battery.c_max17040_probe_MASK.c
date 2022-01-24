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
struct power_supply_config {struct max17040_chip* drv_data; } ;
struct max17040_chip {int /*<<< orphan*/  work; int /*<<< orphan*/  battery; int /*<<< orphan*/  pdata; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  platform_data; } ;
struct i2c_client {TYPE_1__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX17040_DELAY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct max17040_chip* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct max17040_chip*) ; 
 int /*<<< orphan*/  max17040_battery_desc ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  max17040_work ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct power_supply_config psy_cfg = {};
	struct max17040_chip *chip;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE))
		return -EIO;

	chip = FUNC4(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->client = client;
	chip->pdata = client->dev.platform_data;

	FUNC6(client, chip);
	psy_cfg.drv_data = chip;

	chip->battery = FUNC9(&client->dev,
				&max17040_battery_desc, &psy_cfg);
	if (FUNC1(chip->battery)) {
		FUNC3(&client->dev, "failed: power supply register\n");
		return FUNC2(chip->battery);
	}

	FUNC8(client);
	FUNC7(client);

	FUNC0(&chip->work, max17040_work);
	FUNC10(system_power_efficient_wq, &chip->work,
			   MAX17040_DELAY);

	return 0;
}