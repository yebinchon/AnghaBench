#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct ds278x_info* drv_data; } ;
struct i2c_device_id {size_t driver_data; } ;
struct TYPE_5__ {struct ds278x_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct ds278x_platform_data {int /*<<< orphan*/  rsns; } ;
struct TYPE_6__ {struct ds278x_info* name; } ;
struct ds278x_info {int id; int capacity; TYPE_2__ battery_desc; int /*<<< orphan*/  bat_work; int /*<<< orphan*/  battery; int /*<<< orphan*/  status; int /*<<< orphan*/ * ops; struct i2c_client* client; int /*<<< orphan*/  rsns; } ;

/* Variables and functions */
 size_t DS2786 ; 
 int /*<<< orphan*/  DS278x_DELAY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_FULL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  ds278x_bat_work ; 
 int /*<<< orphan*/ * ds278x_ops ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct ds278x_info*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 struct ds278x_info* FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ds278x_info*) ; 
 struct ds278x_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct ds278x_platform_data *pdata = client->dev.platform_data;
	struct power_supply_config psy_cfg = {};
	struct ds278x_info *info;
	int ret;
	int num;

	/*
	 * ds2786 should have the sense resistor value set
	 * in the platform data
	 */
	if (id->driver_data == DS2786 && !pdata) {
		FUNC3(&client->dev, "missing platform data for ds2786\n");
		return -EINVAL;
	}

	/* Get an ID for this battery */
	FUNC11(&battery_lock);
	ret = FUNC6(&battery_id, client, 0, 0, GFP_KERNEL);
	FUNC12(&battery_lock);
	if (ret < 0)
		goto fail_id;
	num = ret;

	info = FUNC10(sizeof(*info), GFP_KERNEL);
	if (!info) {
		ret = -ENOMEM;
		goto fail_info;
	}

	info->battery_desc.name = FUNC8(GFP_KERNEL, "%s-%d",
					    client->name, num);
	if (!info->battery_desc.name) {
		ret = -ENOMEM;
		goto fail_name;
	}

	if (id->driver_data == DS2786)
		info->rsns = pdata->rsns;

	FUNC5(client, info);
	info->client = client;
	info->id = num;
	info->ops  = &ds278x_ops[id->driver_data];
	FUNC4(&info->battery_desc);
	psy_cfg.drv_data = info;

	info->capacity = 100;
	info->status = POWER_SUPPLY_STATUS_FULL;

	FUNC0(&info->bat_work, ds278x_bat_work);

	info->battery = FUNC13(&client->dev,
					      &info->battery_desc, &psy_cfg);
	if (FUNC1(info->battery)) {
		FUNC3(&client->dev, "failed to register battery\n");
		ret = FUNC2(info->battery);
		goto fail_register;
	} else {
		FUNC14(&info->bat_work, DS278x_DELAY);
	}

	return 0;

fail_register:
	FUNC9(info->battery_desc.name);
fail_name:
	FUNC9(info);
fail_info:
	FUNC11(&battery_lock);
	FUNC7(&battery_id, num);
	FUNC12(&battery_lock);
fail_id:
	return ret;
}