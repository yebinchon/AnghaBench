#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
union power_supply_propval {int /*<<< orphan*/  intval; } ;
struct power_supply {int dummy; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {TYPE_1__* driver; struct bq2415x_platform_data* platform_data; struct device_node* of_node; } ;
struct i2c_client {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct bq2415x_platform_data {int dummy; } ;
struct TYPE_12__ {scalar_t__ notify_device; int /*<<< orphan*/  resistor_sense; int /*<<< orphan*/  termination_current; int /*<<< orphan*/  charge_current; int /*<<< orphan*/  battery_regulation_voltage; int /*<<< orphan*/  weak_battery_voltage; int /*<<< orphan*/  current_limit; } ;
struct TYPE_11__ {scalar_t__ notifier_call; } ;
struct bq2415x_device {int id; char* name; int automode; scalar_t__ notify_node; TYPE_4__* dev; int /*<<< orphan*/  work; void* reported_mode; TYPE_3__ init_data; TYPE_2__ nb; scalar_t__ autotimer; void* mode; int /*<<< orphan*/  chip; } ;
struct acpi_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  id; } ;
struct TYPE_10__ {int /*<<< orphan*/  acpi_match_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 void* BQ2415X_MODE_OFF ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct power_supply*) ; 
 int /*<<< orphan*/  POWER_SUPPLY_PROP_CURRENT_MAX ; 
 struct acpi_device_id* FUNC3 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  bq2415x_id ; 
 int /*<<< orphan*/  bq2415x_id_mutex ; 
 scalar_t__ bq2415x_notifier_call ; 
 int /*<<< orphan*/  FUNC4 (struct bq2415x_device*) ; 
 int FUNC5 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct bq2415x_device*,int) ; 
 int FUNC8 (struct bq2415x_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct bq2415x_device*,void*) ; 
 int /*<<< orphan*/  bq2415x_timer_work ; 
 int /*<<< orphan*/  FUNC10 (struct bq2415x_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,char*) ; 
 int FUNC13 (TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 struct bq2415x_device* FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*,struct bq2415x_device*) ; 
 int FUNC16 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 char* FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,struct bq2415x_platform_data*,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct power_supply* FUNC25 (scalar_t__) ; 
 struct power_supply* FUNC26 (struct device_node*,char*) ; 
 int FUNC27 (struct power_supply*,int /*<<< orphan*/ ,union power_supply_propval*) ; 
 int /*<<< orphan*/  FUNC28 (struct power_supply*) ; 
 int FUNC29 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC30(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	int ret;
	int num;
	char *name = NULL;
	struct bq2415x_device *bq;
	struct device_node *np = client->dev.of_node;
	struct bq2415x_platform_data *pdata = client->dev.platform_data;
	const struct acpi_device_id *acpi_id = NULL;
	struct power_supply *notify_psy = NULL;
	union power_supply_propval prop;

	if (!np && !pdata && !FUNC0(&client->dev)) {
		FUNC11(&client->dev, "Neither devicetree, nor platform data, nor ACPI support\n");
		return -ENODEV;
	}

	/* Get new ID for the new device */
	FUNC21(&bq2415x_id_mutex);
	num = FUNC16(&bq2415x_id, client, 0, 0, GFP_KERNEL);
	FUNC22(&bq2415x_id_mutex);
	if (num < 0)
		return num;

	if (id) {
		name = FUNC18(GFP_KERNEL, "%s-%d", id->name, num);
	} else if (FUNC0(&client->dev)) {
		acpi_id =
			FUNC3(client->dev.driver->acpi_match_table,
					  &client->dev);
		if (!acpi_id) {
			FUNC11(&client->dev, "failed to match device name\n");
			ret = -ENODEV;
			goto error_1;
		}
		name = FUNC18(GFP_KERNEL, "%s-%d", acpi_id->id, num);
	}
	if (!name) {
		FUNC11(&client->dev, "failed to allocate device name\n");
		ret = -ENOMEM;
		goto error_1;
	}

	bq = FUNC14(&client->dev, sizeof(*bq), GFP_KERNEL);
	if (!bq) {
		ret = -ENOMEM;
		goto error_2;
	}

	FUNC15(client, bq);

	bq->id = num;
	bq->dev = &client->dev;
	if (id)
		bq->chip = id->driver_data;
	else if (FUNC0(bq->dev))
		bq->chip = acpi_id->driver_data;
	bq->name = name;
	bq->mode = BQ2415X_MODE_OFF;
	bq->reported_mode = BQ2415X_MODE_OFF;
	bq->autotimer = 0;
	bq->automode = 0;

	if (np || FUNC0(bq->dev)) {
		ret = FUNC13(bq->dev,
					       "ti,current-limit",
					       &bq->init_data.current_limit);
		if (ret)
			goto error_2;
		ret = FUNC13(bq->dev,
					"ti,weak-battery-voltage",
					&bq->init_data.weak_battery_voltage);
		if (ret)
			goto error_2;
		ret = FUNC13(bq->dev,
				"ti,battery-regulation-voltage",
				&bq->init_data.battery_regulation_voltage);
		if (ret)
			goto error_2;
		ret = FUNC13(bq->dev,
					       "ti,charge-current",
					       &bq->init_data.charge_current);
		if (ret)
			goto error_2;
		ret = FUNC13(bq->dev,
				"ti,termination-current",
				&bq->init_data.termination_current);
		if (ret)
			goto error_2;
		ret = FUNC13(bq->dev,
					       "ti,resistor-sense",
					       &bq->init_data.resistor_sense);
		if (ret)
			goto error_2;
		if (np)
			bq->notify_node = FUNC24(np,
						"ti,usb-charger-detection", 0);
	} else {
		FUNC20(&bq->init_data, pdata, sizeof(bq->init_data));
	}

	FUNC6(bq);

	ret = FUNC5(bq);
	if (ret) {
		FUNC11(bq->dev, "failed to register power supply: %d\n", ret);
		goto error_2;
	}

	ret = FUNC8(bq);
	if (ret) {
		FUNC11(bq->dev, "failed to set default values: %d\n", ret);
		goto error_3;
	}

	if (bq->notify_node || bq->init_data.notify_device) {
		bq->nb.notifier_call = bq2415x_notifier_call;
		ret = FUNC29(&bq->nb);
		if (ret) {
			FUNC11(bq->dev, "failed to reg notifier: %d\n", ret);
			goto error_3;
		}

		bq->automode = 1;
		FUNC12(bq->dev, "automode supported, waiting for events\n");
	} else {
		bq->automode = -1;
		FUNC12(bq->dev, "automode not supported\n");
	}

	/* Query for initial reported_mode and set it */
	if (bq->nb.notifier_call) {
		if (np) {
			notify_psy = FUNC26(np,
						"ti,usb-charger-detection");
			if (FUNC2(notify_psy))
				notify_psy = NULL;
		} else if (bq->init_data.notify_device) {
			notify_psy = FUNC25(
						bq->init_data.notify_device);
		}
	}
	if (notify_psy) {
		ret = FUNC27(notify_psy,
					POWER_SUPPLY_PROP_CURRENT_MAX, &prop);
		FUNC28(notify_psy);

		if (ret == 0) {
			FUNC10(bq, prop.intval);
			FUNC9(bq, bq->reported_mode);
		}
	}

	FUNC1(&bq->work, bq2415x_timer_work);
	FUNC7(bq, 1);

	FUNC12(bq->dev, "driver registered\n");
	return 0;

error_3:
	FUNC4(bq);
error_2:
	if (bq)
		FUNC23(bq->notify_node);
	FUNC19(name);
error_1:
	FUNC21(&bq2415x_id_mutex);
	FUNC17(&bq2415x_id, num);
	FUNC22(&bq2415x_id_mutex);

	return ret;
}