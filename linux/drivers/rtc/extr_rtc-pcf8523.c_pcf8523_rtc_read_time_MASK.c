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
struct rtc_time {int tm_wday; void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_msg*) ; 
 int EINVAL ; 
 scalar_t__ I2C_M_RD ; 
 int REG_SECONDS ; 
 int REG_SECONDS_OS ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	u8 start = REG_SECONDS, regs[7];
	struct i2c_msg msgs[2];
	int err;

	err = FUNC4(client);
	if (err < 0) {
		return err;
	} else if (err > 0) {
		FUNC2(dev, "low voltage detected, time is unreliable\n");
		return -EINVAL;
	}

	msgs[0].addr = client->addr;
	msgs[0].flags = 0;
	msgs[0].len = 1;
	msgs[0].buf = &start;

	msgs[1].addr = client->addr;
	msgs[1].flags = I2C_M_RD;
	msgs[1].len = sizeof(regs);
	msgs[1].buf = regs;

	err = FUNC3(client->adapter, msgs, FUNC0(msgs));
	if (err < 0)
		return err;

	if (regs[0] & REG_SECONDS_OS)
		return -EINVAL;

	tm->tm_sec = FUNC1(regs[0] & 0x7f);
	tm->tm_min = FUNC1(regs[1] & 0x7f);
	tm->tm_hour = FUNC1(regs[2] & 0x3f);
	tm->tm_mday = FUNC1(regs[3] & 0x3f);
	tm->tm_wday = regs[4] & 0x7;
	tm->tm_mon = FUNC1(regs[5] & 0x1f) - 1;
	tm->tm_year = FUNC1(regs[6]) + 100;

	return 0;
}