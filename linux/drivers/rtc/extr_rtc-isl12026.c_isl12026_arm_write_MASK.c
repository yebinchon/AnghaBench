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
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EIO ; 
 int ISL12026_REG_SR ; 
 int ISL12026_REG_SR_RWEL ; 
 int ISL12026_REG_SR_WEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int ret;
	u8 op[3];
	struct i2c_msg msg = {
		.addr	= client->addr,
		.flags	= 0,
		.len	= 1,
		.buf	= op
	};

	/* Set SR.WEL */
	op[0] = 0;
	op[1] = ISL12026_REG_SR;
	op[2] = ISL12026_REG_SR_WEL;
	msg.len = 3;
	ret = FUNC1(client->adapter, &msg, 1);
	if (ret != 1) {
		FUNC0(&client->dev, "write error SR.WEL, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	/* Set SR.WEL and SR.RWEL */
	op[2] = ISL12026_REG_SR_WEL | ISL12026_REG_SR_RWEL;
	msg.len = 3;
	ret = FUNC1(client->adapter, &msg, 1);
	if (ret != 1) {
		FUNC0(&client->dev,
			"write error SR.WEL|SR.RWEL, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto out;
	} else {
		ret = 0;
	}
out:
	return ret;
}