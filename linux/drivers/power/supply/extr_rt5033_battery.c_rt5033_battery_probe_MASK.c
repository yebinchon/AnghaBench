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
typedef  int u32 ;
struct rt5033_battery {int /*<<< orphan*/  psy; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;
struct power_supply_config {struct rt5033_battery* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct rt5033_battery* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct rt5033_battery*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  rt5033_battery_desc ; 
 int /*<<< orphan*/  rt5033_battery_regmap_config ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct power_supply_config psy_cfg = {};
	struct rt5033_battery *battery;
	u32 ret;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE))
		return -EIO;

	battery = FUNC3(&client->dev, sizeof(*battery), GFP_KERNEL);
	if (!battery)
		return -EINVAL;

	battery->client = client;
	battery->regmap = FUNC4(client,
			&rt5033_battery_regmap_config);
	if (FUNC0(battery->regmap)) {
		FUNC2(&client->dev, "Failed to initialize regmap\n");
		return -EINVAL;
	}

	FUNC6(client, battery);
	psy_cfg.drv_data = battery;

	battery->psy = FUNC7(&client->dev,
					     &rt5033_battery_desc, &psy_cfg);
	if (FUNC0(battery->psy)) {
		FUNC2(&client->dev, "Failed to register power supply\n");
		ret = FUNC1(battery->psy);
		return ret;
	}

	return 0;
}