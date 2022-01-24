#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct z2_charger* properties; } ;
struct z2_charger {TYPE_2__ batt_ps_desc; int /*<<< orphan*/  bat_work; int /*<<< orphan*/  batt_ps; int /*<<< orphan*/  work_lock; struct i2c_client* client; struct z2_battery_info* info; int /*<<< orphan*/  bat_status; } ;
struct z2_battery_info {scalar_t__ charge_gpio; } ;
struct power_supply_config {struct z2_charger* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {struct z2_battery_info* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_TYPE_EDGE_BOTH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_UNKNOWN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct z2_charger*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct z2_charger*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct z2_charger*) ; 
 struct z2_charger* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_2__*,struct power_supply_config*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct z2_charger*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (struct z2_charger*,int) ; 
 int /*<<< orphan*/  z2_batt_work ; 
 int /*<<< orphan*/  z2_charge_switch_irq ; 

__attribute__((used)) static int FUNC19(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	int ret = 0;
	int props = 1;	/* POWER_SUPPLY_PROP_PRESENT */
	struct z2_charger *charger;
	struct z2_battery_info *info = client->dev.platform_data;
	struct power_supply_config psy_cfg = {};

	if (info == NULL) {
		FUNC3(&client->dev,
			"Please set platform device platform_data"
			" to a valid z2_battery_info pointer!\n");
		return -EINVAL;
	}

	charger = FUNC13(sizeof(*charger), GFP_KERNEL);
	if (charger == NULL)
		return -ENOMEM;

	charger->bat_status = POWER_SUPPLY_STATUS_UNKNOWN;
	charger->info = info;
	charger->client = client;
	FUNC10(client, charger);
	psy_cfg.drv_data = charger;

	FUNC14(&charger->work_lock);

	if (info->charge_gpio >= 0 && FUNC7(info->charge_gpio)) {
		ret = FUNC8(info->charge_gpio, "BATT CHRG");
		if (ret)
			goto err;

		ret = FUNC5(info->charge_gpio);
		if (ret)
			goto err2;

		FUNC11(FUNC9(info->charge_gpio),
				 IRQ_TYPE_EDGE_BOTH);
		ret = FUNC16(FUNC9(info->charge_gpio),
				z2_charge_switch_irq, 0,
				"AC Detect", charger);
		if (ret)
			goto err3;
	}

	ret = FUNC18(charger, props);
	if (ret)
		goto err3;

	FUNC0(&charger->bat_work, z2_batt_work);

	charger->batt_ps = FUNC15(&client->dev,
						 &charger->batt_ps_desc,
						 &psy_cfg);
	if (FUNC1(charger->batt_ps)) {
		ret = FUNC2(charger->batt_ps);
		goto err4;
	}

	FUNC17(&charger->bat_work);

	return 0;

err4:
	FUNC12(charger->batt_ps_desc.properties);
err3:
	if (info->charge_gpio >= 0 && FUNC7(info->charge_gpio))
		FUNC4(FUNC9(info->charge_gpio), charger);
err2:
	if (info->charge_gpio >= 0 && FUNC7(info->charge_gpio))
		FUNC6(info->charge_gpio);
err:
	FUNC12(charger);
	return ret;
}