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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ISL12026_REG_SR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	int ret;
	u8 op[3] = {0, ISL12026_REG_SR, 0};
	struct i2c_msg msg = {
		.addr	= client->addr,
		.flags	= 0,
		.len	= sizeof(op),
		.buf	= op
	};

	ret = FUNC1(client->adapter, &msg, 1);
	if (ret != 1) {
		FUNC0(&client->dev,
			"write error SR, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
	} else {
		ret = 0;
	}

	return ret;
}