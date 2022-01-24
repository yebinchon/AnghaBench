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
typedef  int uint8_t ;
struct rtc_device {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {struct device dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  BQ32K_MINUTES ; 
 int BQ32K_OF ; 
 int /*<<< orphan*/  BQ32K_SECONDS ; 
 int BQ32K_STOP ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (struct rtc_device*) ; 
 int FUNC1 (struct rtc_device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 TYPE_2__ bq32k_driver ; 
 int FUNC2 (struct device*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bq32k_rtc_ops ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 struct rtc_device* FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct rtc_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct rtc_device *rtc;
	uint8_t reg;
	int error;

	if (!FUNC8(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	/* Check Oscillator Stop flag */
	error = FUNC2(dev, &reg, BQ32K_SECONDS, 1);
	if (!error && (reg & BQ32K_STOP)) {
		FUNC6(dev, "Oscillator was halted. Restarting...\n");
		reg &= ~BQ32K_STOP;
		error = FUNC4(dev, &reg, BQ32K_SECONDS, 1);
	}
	if (error)
		return error;

	/* Check Oscillator Failure flag */
	error = FUNC2(dev, &reg, BQ32K_MINUTES, 1);
	if (error)
		return error;
	if (reg & BQ32K_OF)
		FUNC6(dev, "Oscillator Failure. Check RTC battery.\n");

	if (client->dev.of_node)
		FUNC10(dev, client->dev.of_node);

	rtc = FUNC7(&client->dev, bq32k_driver.driver.name,
						&bq32k_rtc_ops, THIS_MODULE);
	if (FUNC0(rtc))
		return FUNC1(rtc);

	error = FUNC3(&client->dev);
	if (error) {
		FUNC5(&client->dev,
			"Unable to create sysfs entries for rtc bq32000\n");
		return error;
	}


	FUNC9(client, rtc);

	return 0;
}