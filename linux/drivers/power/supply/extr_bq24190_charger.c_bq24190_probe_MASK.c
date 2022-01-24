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
struct power_supply_config {struct bq24190_dev_info* drv_data; int /*<<< orphan*/  num_supplicants; int /*<<< orphan*/  supplied_to; int /*<<< orphan*/  of_node; int /*<<< orphan*/  attr_grp; } ;
struct i2c_device_id {int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  irq; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct bq24190_dev_info {int initialized; void* charger; void* battery; int /*<<< orphan*/  ss_reg; void* edev; int /*<<< orphan*/  input_current_limit_work; scalar_t__ f_reg; int /*<<< orphan*/  f_reg_lock; int /*<<< orphan*/  model_name; struct device* dev; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BQ24190_REG_SS_VBUS_STAT_MASK ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  bq24190_battery_desc ; 
 int /*<<< orphan*/  bq24190_charger_desc ; 
 int /*<<< orphan*/  bq24190_charger_supplied_to ; 
 int FUNC5 (struct bq24190_dev_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct bq24190_dev_info*) ; 
 int FUNC7 (struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  bq24190_input_current_limit_work ; 
 int /*<<< orphan*/  bq24190_irq_handler_thread ; 
 int FUNC8 (struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  bq24190_sysfs_groups ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  bq24190_usb_extcon_cable ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,char*) ; 
 void* FUNC12 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct device*,void*) ; 
 struct bq24190_dev_info* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct i2c_client*,struct bq24190_dev_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int FUNC23 (struct device*) ; 
 int /*<<< orphan*/  FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct device*) ; 
 void* FUNC29 (struct device*,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC30 (void*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC32(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct power_supply_config charger_cfg = {}, battery_cfg = {};
	struct bq24190_dev_info *bdi;
	int ret;

	if (!FUNC17(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC10(dev, "No support for SMBUS_BYTE_DATA\n");
		return -ENODEV;
	}

	bdi = FUNC14(dev, sizeof(*bdi), GFP_KERNEL);
	if (!bdi) {
		FUNC10(dev, "Can't alloc bdi struct\n");
		return -ENOMEM;
	}

	bdi->client = client;
	bdi->dev = dev;
	FUNC31(bdi->model_name, id->name, I2C_NAME_SIZE);
	FUNC19(&bdi->f_reg_lock);
	bdi->f_reg = 0;
	bdi->ss_reg = BQ24190_REG_SS_VBUS_STAT_MASK; /* impossible state */
	FUNC1(&bdi->input_current_limit_work,
			  bq24190_input_current_limit_work);

	FUNC18(client, bdi);

	if (client->irq <= 0) {
		FUNC10(dev, "Can't get irq info\n");
		return -EINVAL;
	}

	bdi->edev = FUNC12(dev, bq24190_usb_extcon_cable);
	if (FUNC2(bdi->edev))
		return FUNC4(bdi->edev);

	ret = FUNC13(dev, bdi->edev);
	if (ret < 0)
		return ret;

	FUNC22(dev);
	FUNC28(dev);
	FUNC27(dev, 600);
	ret = FUNC23(dev);
	if (ret < 0) {
		FUNC10(dev, "pm_runtime_get failed: %i\n", ret);
		goto out_pmrt;
	}

#ifdef CONFIG_SYSFS
	bq24190_sysfs_init_attrs();
	charger_cfg.attr_grp = bq24190_sysfs_groups;
#endif

	charger_cfg.drv_data = bdi;
	charger_cfg.of_node = dev->of_node;
	charger_cfg.supplied_to = bq24190_charger_supplied_to;
	charger_cfg.num_supplicants = FUNC0(bq24190_charger_supplied_to),
	bdi->charger = FUNC29(dev, &bq24190_charger_desc,
						&charger_cfg);
	if (FUNC2(bdi->charger)) {
		FUNC10(dev, "Can't register charger\n");
		ret = FUNC4(bdi->charger);
		goto out_pmrt;
	}

	/* the battery class is deprecated and will be removed. */
	/* in the interim, this property hides it.              */
	if (!FUNC11(dev, "omit-battery-class")) {
		battery_cfg.drv_data = bdi;
		bdi->battery = FUNC29(dev, &bq24190_battery_desc,
						     &battery_cfg);
		if (FUNC2(bdi->battery)) {
			FUNC10(dev, "Can't register battery\n");
			ret = FUNC4(bdi->battery);
			goto out_charger;
		}
	}

	ret = FUNC6(bdi);
	if (ret < 0) {
		FUNC10(dev, "Can't get devicetree config\n");
		goto out_charger;
	}

	ret = FUNC7(bdi);
	if (ret < 0) {
		FUNC10(dev, "Hardware init failed\n");
		goto out_charger;
	}

	ret = FUNC5(bdi, bdi->ss_reg);
	if (ret < 0)
		goto out_charger;

	bdi->initialized = true;

	ret = FUNC15(dev, client->irq, NULL,
			bq24190_irq_handler_thread,
			IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
			"bq24190-charger", bdi);
	if (ret < 0) {
		FUNC10(dev, "Can't set up irq handler\n");
		goto out_charger;
	}

	ret = FUNC8(bdi);
	if (ret < 0)
		goto out_charger;

	FUNC16(client->irq);

	FUNC24(dev);
	FUNC25(dev);

	return 0;

out_charger:
	if (!FUNC3(bdi->battery))
		FUNC30(bdi->battery);
	FUNC30(bdi->charger);

out_pmrt:
	FUNC26(dev);
	FUNC21(dev);
	FUNC20(dev);
	return ret;
}