#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {struct regulator_dev* regmap; struct max8649_regulator_info* driver_data; int /*<<< orphan*/  init_data; int /*<<< orphan*/ * dev; } ;
struct max8649_regulator_info {int mode; int extclk_freq; int ramp_timing; int /*<<< orphan*/ * dev; struct regulator_dev* regmap; scalar_t__ ramp_down; scalar_t__ extclk; } ;
struct max8649_platform_data {int mode; int extclk_freq; int ramp_timing; int /*<<< orphan*/  regulator; scalar_t__ ramp_down; scalar_t__ extclk; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int name; int /*<<< orphan*/  vsel_reg; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  MAX8649_CHIP_ID1 ; 
 int /*<<< orphan*/  MAX8649_CONTROL ; 
 int MAX8649_EXT_MASK ; 
 int /*<<< orphan*/  MAX8649_MODE0 ; 
 int /*<<< orphan*/  MAX8649_MODE1 ; 
 int /*<<< orphan*/  MAX8649_MODE2 ; 
 int /*<<< orphan*/  MAX8649_MODE3 ; 
 int /*<<< orphan*/  MAX8649_RAMP ; 
 int MAX8649_RAMP_DOWN ; 
 int MAX8649_RAMP_MASK ; 
 int /*<<< orphan*/  MAX8649_SYNC ; 
 int MAX8649_SYNC_EXTCLK ; 
 int MAX8649_VID_MASK ; 
 int FUNC1 (struct regulator_dev*) ; 
 TYPE_1__ dcdc_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct max8649_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 struct max8649_regulator_info* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct max8649_regulator_info*) ; 
 int /*<<< orphan*/  max8649_regmap_config ; 
 int FUNC9 (struct regulator_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_dev*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
					     const struct i2c_device_id *id)
{
	struct max8649_platform_data *pdata = FUNC3(&client->dev);
	struct max8649_regulator_info *info = NULL;
	struct regulator_dev *regulator;
	struct regulator_config config = { };
	unsigned int val;
	unsigned char data;
	int ret;

	info = FUNC5(&client->dev, sizeof(struct max8649_regulator_info),
			    GFP_KERNEL);
	if (!info)
		return -ENOMEM;

	info->regmap = FUNC6(client, &max8649_regmap_config);
	if (FUNC0(info->regmap)) {
		ret = FUNC1(info->regmap);
		FUNC2(&client->dev, "Failed to allocate register map: %d\n", ret);
		return ret;
	}

	info->dev = &client->dev;
	FUNC8(client, info);

	info->mode = pdata->mode;
	switch (info->mode) {
	case 0:
		dcdc_desc.vsel_reg = MAX8649_MODE0;
		break;
	case 1:
		dcdc_desc.vsel_reg = MAX8649_MODE1;
		break;
	case 2:
		dcdc_desc.vsel_reg = MAX8649_MODE2;
		break;
	case 3:
		dcdc_desc.vsel_reg = MAX8649_MODE3;
		break;
	default:
		break;
	}

	ret = FUNC9(info->regmap, MAX8649_CHIP_ID1, &val);
	if (ret != 0) {
		FUNC2(info->dev, "Failed to detect ID of MAX8649:%d\n",
			ret);
		return ret;
	}
	FUNC4(info->dev, "Detected MAX8649 (ID:%x)\n", val);

	/* enable VID0 & VID1 */
	FUNC10(info->regmap, MAX8649_CONTROL, MAX8649_VID_MASK, 0);

	/* enable/disable external clock synchronization */
	info->extclk = pdata->extclk;
	data = (info->extclk) ? MAX8649_SYNC_EXTCLK : 0;
	FUNC10(info->regmap, dcdc_desc.vsel_reg,
			   MAX8649_SYNC_EXTCLK, data);
	if (info->extclk) {
		/* set external clock frequency */
		info->extclk_freq = pdata->extclk_freq;
		FUNC10(info->regmap, MAX8649_SYNC, MAX8649_EXT_MASK,
				   info->extclk_freq << 6);
	}

	if (pdata->ramp_timing) {
		info->ramp_timing = pdata->ramp_timing;
		FUNC10(info->regmap, MAX8649_RAMP, MAX8649_RAMP_MASK,
				   info->ramp_timing << 5);
	}

	info->ramp_down = pdata->ramp_down;
	if (info->ramp_down) {
		FUNC10(info->regmap, MAX8649_RAMP, MAX8649_RAMP_DOWN,
				   MAX8649_RAMP_DOWN);
	}

	config.dev = &client->dev;
	config.init_data = pdata->regulator;
	config.driver_data = info;
	config.regmap = info->regmap;

	regulator = FUNC7(&client->dev, &dcdc_desc,
						  &config);
	if (FUNC0(regulator)) {
		FUNC2(info->dev, "failed to register regulator %s\n",
			dcdc_desc.name);
		return FUNC1(regulator);
	}

	return 0;
}