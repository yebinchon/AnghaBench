#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ id; } ;
struct w1_slave {int /*<<< orphan*/  dev; TYPE_1__ reg_num; void* family_data; } ;
struct power_supply_config {struct max17211_device_info* drv_data; } ;
struct TYPE_4__ {int no_thermal; int /*<<< orphan*/  get_property; int /*<<< orphan*/  num_properties; int /*<<< orphan*/  properties; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct max17211_device_info {unsigned int rsense; int /*<<< orphan*/  bat; int /*<<< orphan*/ * w1_dev; TYPE_2__ bat_desc; int /*<<< orphan*/  SerialNumber; int /*<<< orphan*/ * DeviceName; int /*<<< orphan*/  regmap; int /*<<< orphan*/ * ManufacturerName; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEF_DEV_NAME_MAX17211 ; 
 int /*<<< orphan*/  DEF_DEV_NAME_MAX17215 ; 
 int /*<<< orphan*/  DEF_DEV_NAME_UNKNOWN ; 
 int /*<<< orphan*/  DEF_MFG_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX1721X_REG_DEV_NUMB ; 
 int /*<<< orphan*/  MAX1721X_REG_DEV_STR ; 
 int MAX1721X_REG_MFG_NUMB ; 
 int /*<<< orphan*/  MAX1721X_REG_MFG_STR ; 
 int /*<<< orphan*/  MAX1721X_REG_NRSENSE ; 
#define  MAX172X1_DEV 129 
#define  MAX172X5_DEV 128 
 unsigned int MAX172XX_DEV_MASK ; 
 int /*<<< orphan*/  MAX172XX_REG_DEVNAME ; 
 int /*<<< orphan*/  POWER_SUPPLY_TYPE_BATTERY ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct max17211_device_info* FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct max17211_device_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct max17211_device_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max1721x_battery_get_property ; 
 int /*<<< orphan*/  max1721x_battery_props ; 
 int /*<<< orphan*/  max1721x_regmap_w1_config ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct w1_slave *sl)
{
	struct power_supply_config psy_cfg = {};
	struct max17211_device_info *info;

	info = FUNC6(&sl->dev, sizeof(*info), GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	sl->family_data = (void *)info;
	info->w1_dev = &sl->dev;

	/*
	 * power_supply class battery name translated from W1 slave device
	 * unical ID (look like 26-0123456789AB) to "max1721x-0123456789AB\0"
	 * so, 26 (device family) correcpondent to max1721x devices.
	 * Device name still unical for any numbers connected devices.
	 */
	FUNC12(info->name, sizeof(info->name),
		"max1721x-%012X", (unsigned int)sl->reg_num.id);
	info->bat_desc.name = info->name;

	/*
	 * FixMe: battery device name exceed max len for thermal_zone device
	 * name and translation to thermal_zone must be disabled.
	 */
	info->bat_desc.no_thermal = true;
	info->bat_desc.type = POWER_SUPPLY_TYPE_BATTERY;
	info->bat_desc.properties = max1721x_battery_props;
	info->bat_desc.num_properties = FUNC0(max1721x_battery_props);
	info->bat_desc.get_property = max1721x_battery_get_property;
	psy_cfg.drv_data = info;

	/* regmap init */
	info->regmap = FUNC8(info->w1_dev,
					&max1721x_regmap_w1_config);
	if (FUNC1(info->regmap)) {
		int err = FUNC2(info->regmap);

		FUNC3(info->w1_dev, "Failed to allocate register map: %d\n",
			err);
		return err;
	}

	/* rsense init */
	info->rsense = 0;
	if (FUNC11(info->regmap, MAX1721X_REG_NRSENSE, &info->rsense)) {
		FUNC3(info->w1_dev, "Can't read RSense. Hardware error.\n");
		return -ENODEV;
	}

	if (!info->rsense) {
		FUNC5(info->w1_dev, "RSense not calibrated, set 10 mOhms!\n");
		info->rsense = 1000; /* in regs in 10^-5 */
	}
	FUNC4(info->w1_dev, "RSense: %d mOhms.\n", info->rsense / 100);

	if (FUNC10(info, MAX1721X_REG_MFG_STR,
			MAX1721X_REG_MFG_NUMB, info->ManufacturerName)) {
		FUNC3(info->w1_dev, "Can't read manufacturer. Hardware error.\n");
		return -ENODEV;
	}

	if (!info->ManufacturerName[0])
		FUNC13(info->ManufacturerName, DEF_MFG_NAME,
			2 * MAX1721X_REG_MFG_NUMB);

	if (FUNC10(info, MAX1721X_REG_DEV_STR,
			MAX1721X_REG_DEV_NUMB, info->DeviceName)) {
		FUNC3(info->w1_dev, "Can't read device. Hardware error.\n");
		return -ENODEV;
	}
	if (!info->DeviceName[0]) {
		unsigned int dev_name;

		if (FUNC11(info->regmap,
				MAX172XX_REG_DEVNAME, &dev_name)) {
			FUNC3(info->w1_dev, "Can't read device name reg.\n");
			return -ENODEV;
		}

		switch (dev_name & MAX172XX_DEV_MASK) {
		case MAX172X1_DEV:
			FUNC13(info->DeviceName, DEF_DEV_NAME_MAX17211,
				2 * MAX1721X_REG_DEV_NUMB);
			break;
		case MAX172X5_DEV:
			FUNC13(info->DeviceName, DEF_DEV_NAME_MAX17215,
				2 * MAX1721X_REG_DEV_NUMB);
			break;
		default:
			FUNC13(info->DeviceName, DEF_DEV_NAME_UNKNOWN,
				2 * MAX1721X_REG_DEV_NUMB);
		}
	}

	if (FUNC9(info, info->SerialNumber)) {
		FUNC3(info->w1_dev, "Can't read serial. Hardware error.\n");
		return -ENODEV;
	}

	info->bat = FUNC7(&sl->dev, &info->bat_desc,
						&psy_cfg);
	if (FUNC1(info->bat)) {
		FUNC3(info->w1_dev, "failed to register battery\n");
		return FUNC2(info->bat);
	}

	return 0;
}