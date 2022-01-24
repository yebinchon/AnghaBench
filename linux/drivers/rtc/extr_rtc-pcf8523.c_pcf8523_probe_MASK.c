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
struct pcf8523 {int /*<<< orphan*/  rtc; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct pcf8523* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct pcf8523*) ; 
 int FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  pcf8523_rtc_ops ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct pcf8523 *pcf;
	int err;

	if (!FUNC5(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	pcf = FUNC3(&client->dev, sizeof(*pcf), GFP_KERNEL);
	if (!pcf)
		return -ENOMEM;

	err = FUNC7(client);
	if (err < 0)
		FUNC2(&client->dev, "failed to set xtal load capacitance: %d",
			 err);

	err = FUNC8(client, 0);
	if (err < 0)
		return err;

	pcf->rtc = FUNC4(&client->dev, DRIVER_NAME,
				       &pcf8523_rtc_ops, THIS_MODULE);
	if (FUNC0(pcf->rtc))
		return FUNC1(pcf->rtc);

	FUNC6(client, pcf);

	return 0;
}