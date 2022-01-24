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
struct isl12022 {int /*<<< orphan*/  rtc; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct isl12022* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct isl12022*) ; 
 TYPE_2__ isl12022_driver ; 
 int /*<<< orphan*/  isl12022_rtc_ops ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct isl12022 *isl12022;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	isl12022 = FUNC1(&client->dev, sizeof(struct isl12022),
				GFP_KERNEL);
	if (!isl12022)
		return -ENOMEM;

	FUNC4(client, isl12022);

	isl12022->rtc = FUNC2(&client->dev,
					isl12022_driver.driver.name,
					&isl12022_rtc_ops, THIS_MODULE);
	return FUNC0(isl12022->rtc);
}