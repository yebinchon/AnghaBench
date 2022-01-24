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
typedef  int u8 ;
struct i2c_msg {int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int ENODEV ; 
 scalar_t__ I2C_M_RD ; 
 int FUNC1 (int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bq27xxx_device_info *di, u8 reg,
				    bool single)
{
	struct i2c_client *client = FUNC3(di->dev);
	struct i2c_msg msg[2];
	u8 data[2];
	int ret;

	if (!client->adapter)
		return -ENODEV;

	msg[0].addr = client->addr;
	msg[0].flags = 0;
	msg[0].buf = &reg;
	msg[0].len = sizeof(reg);
	msg[1].addr = client->addr;
	msg[1].flags = I2C_M_RD;
	msg[1].buf = data;
	if (single)
		msg[1].len = 1;
	else
		msg[1].len = 2;

	ret = FUNC2(client->adapter, msg, FUNC0(msg));
	if (ret < 0)
		return ret;

	if (!single)
		ret = FUNC1(data);
	else
		ret = data[0];

	return ret;
}