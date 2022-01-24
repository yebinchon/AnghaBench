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
typedef  int /*<<< orphan*/  u8 ;
struct i2c_msg {int len; scalar_t__ flags; int /*<<< orphan*/  addr; int /*<<< orphan*/ * buf; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct bq27xxx_device_info {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct bq27xxx_device_info *di,
					  u8 reg, u8 *data, int len)
{
	struct i2c_client *client = FUNC2(di->dev);
	struct i2c_msg msg;
	u8 buf[33];
	int ret;

	if (!client->adapter)
		return -ENODEV;

	buf[0] = reg;
	FUNC1(&buf[1], data, len);

	msg.buf = buf;
	msg.addr = client->addr;
	msg.flags = 0;
	msg.len = len + 1;

	ret = FUNC0(client->adapter, &msg, 1);
	if (ret < 0)
		return ret;
	if (ret != 1)
		return -EINVAL;
	return 0;
}