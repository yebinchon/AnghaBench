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
typedef  int /*<<< orphan*/  val ;
typedef  int u8 ;
struct i2c_msg {int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct bq2415x_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int ENODEV ; 
 scalar_t__ I2C_M_RD ; 
 int /*<<< orphan*/  bq2415x_i2c_mutex ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bq2415x_device *bq, u8 reg)
{
	struct i2c_client *client = FUNC4(bq->dev);
	struct i2c_msg msg[2];
	u8 val;
	int ret;

	if (!client->adapter)
		return -ENODEV;

	msg[0].addr = client->addr;
	msg[0].flags = 0;
	msg[0].buf = &reg;
	msg[0].len = sizeof(reg);
	msg[1].addr = client->addr;
	msg[1].flags = I2C_M_RD;
	msg[1].buf = &val;
	msg[1].len = sizeof(val);

	FUNC2(&bq2415x_i2c_mutex);
	ret = FUNC1(client->adapter, msg, FUNC0(msg));
	FUNC3(&bq2415x_i2c_mutex);

	if (ret < 0)
		return ret;

	return val;
}