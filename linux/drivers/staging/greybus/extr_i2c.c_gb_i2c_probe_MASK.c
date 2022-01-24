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
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int class; int /*<<< orphan*/  name; TYPE_2__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  owner; } ;
struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int /*<<< orphan*/  dev; TYPE_1__* cport_desc; int /*<<< orphan*/  bundle; } ;
struct gb_i2c_device {struct i2c_adapter adapter; struct gbphy_device* gbphy_dev; struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_CLASS_HWMON ; 
 int I2C_CLASS_SPD ; 
 scalar_t__ FUNC0 (struct gb_connection*) ; 
 int FUNC1 (struct gb_connection*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct gb_connection* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_connection*) ; 
 int FUNC5 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct gb_connection*,struct gb_i2c_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct gbphy_device*,struct gb_i2c_device*) ; 
 int /*<<< orphan*/  gb_i2c_algorithm ; 
 int FUNC8 (struct gb_i2c_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct gbphy_device*) ; 
 int FUNC10 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,struct gb_i2c_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct gb_i2c_device*) ; 
 struct gb_i2c_device* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC16(struct gbphy_device *gbphy_dev,
			const struct gbphy_device_id *id)
{
	struct gb_connection *connection;
	struct gb_i2c_device *gb_i2c_dev;
	struct i2c_adapter *adapter;
	int ret;

	gb_i2c_dev = FUNC13(sizeof(*gb_i2c_dev), GFP_KERNEL);
	if (!gb_i2c_dev)
		return -ENOMEM;

	connection =
		FUNC2(gbphy_dev->bundle,
				     FUNC14(gbphy_dev->cport_desc->id),
				     NULL);
	if (FUNC0(connection)) {
		ret = FUNC1(connection);
		goto exit_i2cdev_free;
	}

	gb_i2c_dev->connection = connection;
	FUNC6(connection, gb_i2c_dev);
	gb_i2c_dev->gbphy_dev = gbphy_dev;
	FUNC7(gbphy_dev, gb_i2c_dev);

	ret = FUNC5(connection);
	if (ret)
		goto exit_connection_destroy;

	ret = FUNC8(gb_i2c_dev);
	if (ret)
		goto exit_connection_disable;

	/* Looks good; up our i2c adapter */
	adapter = &gb_i2c_dev->adapter;
	adapter->owner = THIS_MODULE;
	adapter->class = I2C_CLASS_HWMON | I2C_CLASS_SPD;
	adapter->algo = &gb_i2c_algorithm;
	/* adapter->algo_data = what? */

	adapter->dev.parent = &gbphy_dev->dev;
	FUNC15(adapter->name, sizeof(adapter->name), "Greybus i2c adapter");
	FUNC11(adapter, gb_i2c_dev);

	ret = FUNC10(adapter);
	if (ret)
		goto exit_connection_disable;

	FUNC9(gbphy_dev);
	return 0;

exit_connection_disable:
	FUNC4(connection);
exit_connection_destroy:
	FUNC3(connection);
exit_i2cdev_free:
	FUNC12(gb_i2c_dev);

	return ret;
}