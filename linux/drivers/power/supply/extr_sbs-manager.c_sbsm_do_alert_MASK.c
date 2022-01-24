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
struct i2c_driver {int /*<<< orphan*/  (* alert ) (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {scalar_t__ driver; } ;
struct i2c_client {int addr; TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  I2C_PROTOCOL_SMBUS_ALERT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_driver* FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, void *d)
{
	struct i2c_client *client = FUNC4(dev);
	struct i2c_driver *driver;

	if (!client || client->addr != 0x0b)
		return 0;

	FUNC2(dev);
	if (client->dev.driver) {
		driver = FUNC6(client->dev.driver);
		if (driver->alert)
			driver->alert(client, I2C_PROTOCOL_SMBUS_ALERT, 0);
		else
			FUNC1(&client->dev, "no driver alert()!\n");
	} else {
		FUNC0(&client->dev, "alert with no driver\n");
	}
	FUNC3(dev);

	return -EBUSY;
}