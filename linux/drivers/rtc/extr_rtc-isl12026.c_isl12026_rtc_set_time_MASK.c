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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  op ;

/* Variables and functions */
 int EIO ; 
 int ISL12026_REG_HR_MIL ; 
 int ISL12026_REG_SC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	int ret;
	u8 op[10];
	struct i2c_msg msg = {
		.addr	= client->addr,
		.flags	= 0,
		.len	= sizeof(op),
		.buf	= op
	};

	ret = FUNC3(client);
	if (ret)
		return ret;

	/* Set the CCR registers */
	op[0] = 0;
	op[1] = ISL12026_REG_SC;
	op[2] = FUNC0(tm->tm_sec); /* SC */
	op[3] = FUNC0(tm->tm_min); /* MN */
	op[4] = FUNC0(tm->tm_hour) | ISL12026_REG_HR_MIL; /* HR */
	op[5] = FUNC0(tm->tm_mday); /* DT */
	op[6] = FUNC0(tm->tm_mon + 1); /* MO */
	op[7] = FUNC0(tm->tm_year % 100); /* YR */
	op[8] = FUNC0(tm->tm_wday & 7); /* DW */
	op[9] = FUNC0(tm->tm_year >= 100 ? 20 : 19); /* Y2K */
	ret = FUNC2(client->adapter, &msg, 1);
	if (ret != 1) {
		FUNC1(&client->dev, "write error CCR, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	ret = FUNC4(client);
out:
	return ret;
}