#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sd3078 {TYPE_1__* rtc; TYPE_1__* regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  range_max; int /*<<< orphan*/  range_min; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_BEGIN_2000 ; 
 int /*<<< orphan*/  RTC_TIMESTAMP_END_2099 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct sd3078* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct sd3078*) ; 
 int /*<<< orphan*/  regmap_config ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sd3078*) ; 
 int /*<<< orphan*/  sd3078_rtc_ops ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret;
	struct sd3078 *sd3078;

	if (!FUNC6(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	sd3078 = FUNC3(&client->dev, sizeof(*sd3078), GFP_KERNEL);
	if (!sd3078)
		return -ENOMEM;

	sd3078->regmap = FUNC4(client, &regmap_config);
	if (FUNC0(sd3078->regmap)) {
		FUNC2(&client->dev, "regmap allocation failed\n");
		return FUNC1(sd3078->regmap);
	}

	FUNC7(client, sd3078);

	sd3078->rtc = FUNC5(&client->dev);
	if (FUNC0(sd3078->rtc))
		return FUNC1(sd3078->rtc);

	sd3078->rtc->ops = &sd3078_rtc_ops;
	sd3078->rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
	sd3078->rtc->range_max = RTC_TIMESTAMP_END_2099;

	ret = FUNC8(sd3078->rtc);
	if (ret)
		return ret;

	FUNC9(sd3078);

	return 0;
}