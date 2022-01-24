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
struct pcf8583 {int /*<<< orphan*/  rtc; } ;
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
 struct pcf8583* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct pcf8583*) ; 
 TYPE_2__ pcf8583_driver ; 
 int /*<<< orphan*/  pcf8583_rtc_ops ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct pcf8583 *pcf8583;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C))
		return -ENODEV;

	pcf8583 = FUNC1(&client->dev, sizeof(struct pcf8583),
				GFP_KERNEL);
	if (!pcf8583)
		return -ENOMEM;

	FUNC4(client, pcf8583);

	pcf8583->rtc = FUNC2(&client->dev,
				pcf8583_driver.driver.name,
				&pcf8583_rtc_ops, THIS_MODULE);

	return FUNC0(pcf8583->rtc);
}