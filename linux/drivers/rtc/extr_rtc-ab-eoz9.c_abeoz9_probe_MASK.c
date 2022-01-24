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
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  adapter; } ;
struct abeoz9_rtc_data {TYPE_1__* rtc; struct regmap* regmap; } ;
struct TYPE_4__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_I2C ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_I2C_BLOCK ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct abeoz9_rtc_data*) ; 
 int /*<<< orphan*/  abeoz9_rtc_regmap_config ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct abeoz9_rtc_data*) ; 
 struct abeoz9_rtc_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rtc_ops ; 
 int FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct abeoz9_rtc_data *data = NULL;
	struct device *dev = &client->dev;
	struct regmap *regmap;
	int ret;

	if (!FUNC10(client->adapter, I2C_FUNC_I2C |
				     I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_I2C_BLOCK))
		return -ENODEV;

	regmap = FUNC8(client, &abeoz9_rtc_regmap_config);
	if (FUNC0(regmap)) {
		ret = FUNC1(regmap);
		FUNC5(dev, "regmap allocation failed: %d\n", ret);
		return ret;
	}

	data = FUNC7(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->regmap = regmap;
	FUNC6(dev, data);

	ret = FUNC4(dev, client->dev.of_node);
	if (ret)
		return ret;

	data->rtc = FUNC9(dev);
	ret = FUNC2(data->rtc);
	if (ret)
		return ret;

	data->rtc->ops = &rtc_ops;
	data->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	data->rtc->range_max = RTC_TIMESTAMP_END_2099;

	ret = FUNC11(data->rtc);
	if (ret)
		return ret;

	FUNC3(dev, data);
	return 0;
}