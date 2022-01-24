#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  write_bulk; int /*<<< orphan*/  read_bulk; int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;
struct bq27xxx_device_info {int id; char* name; int /*<<< orphan*/  work; TYPE_1__ bus; int /*<<< orphan*/  chip; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_mutex ; 
 int /*<<< orphan*/  bq27xxx_battery_i2c_bulk_read ; 
 int /*<<< orphan*/  bq27xxx_battery_i2c_bulk_write ; 
 int /*<<< orphan*/  bq27xxx_battery_i2c_read ; 
 int /*<<< orphan*/  bq27xxx_battery_i2c_write ; 
 int /*<<< orphan*/  bq27xxx_battery_irq_handler_thread ; 
 int FUNC0 (struct bq27xxx_device_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct bq27xxx_device_info* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct bq27xxx_device_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct bq27xxx_device_info*) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
				     const struct i2c_device_id *id)
{
	struct bq27xxx_device_info *di;
	int ret;
	char *name;
	int num;

	/* Get new ID for the new battery device */
	FUNC8(&battery_mutex);
	num = FUNC6(&battery_id, client, 0, 0, GFP_KERNEL);
	FUNC9(&battery_mutex);
	if (num < 0)
		return num;

	name = FUNC2(&client->dev, GFP_KERNEL, "%s-%d", id->name, num);
	if (!name)
		goto err_mem;

	di = FUNC3(&client->dev, sizeof(*di), GFP_KERNEL);
	if (!di)
		goto err_mem;

	di->id = num;
	di->dev = &client->dev;
	di->chip = id->driver_data;
	di->name = name;

	di->bus.read = bq27xxx_battery_i2c_read;
	di->bus.write = bq27xxx_battery_i2c_write;
	di->bus.read_bulk = bq27xxx_battery_i2c_bulk_read;
	di->bus.write_bulk = bq27xxx_battery_i2c_bulk_write;

	ret = FUNC0(di);
	if (ret)
		goto err_failed;

	/* Schedule a polling after about 1 min */
	FUNC10(&di->work, 60 * HZ);

	FUNC5(client, di);

	if (client->irq) {
		ret = FUNC4(&client->dev, client->irq,
				NULL, bq27xxx_battery_irq_handler_thread,
				IRQF_ONESHOT,
				di->name, di);
		if (ret) {
			FUNC1(&client->dev,
				"Unable to register IRQ %d error %d\n",
				client->irq, ret);
			return ret;
		}
	}

	return 0;

err_mem:
	ret = -ENOMEM;

err_failed:
	FUNC8(&battery_mutex);
	FUNC7(&battery_id, num);
	FUNC9(&battery_mutex);

	return ret;
}