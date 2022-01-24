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
typedef  int /*<<< orphan*/  ccr ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int ISL12026_REG_HR_MIL ; 
 int ISL12026_REG_SC ; 
 int ISL12026_REG_SR ; 
 int ISL12026_REG_SR_OSCF ; 
 int ISL12026_REG_SR_RTCF ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC5(dev);
	u8 ccr[8];
	u8 addr[2];
	u8 sr;
	int ret;
	struct i2c_msg msgs[] = {
		{
			.addr	= client->addr,
			.flags	= 0,
			.len	= sizeof(addr),
			.buf	= addr
		}, {
			.addr	= client->addr,
			.flags	= I2C_M_RD,
		}
	};

	/* First, read SR */
	addr[0] = 0;
	addr[1] = ISL12026_REG_SR;
	msgs[1].len = 1;
	msgs[1].buf = &sr;

	ret = FUNC4(client->adapter, msgs, FUNC0(msgs));
	if (ret != FUNC0(msgs)) {
		FUNC2(&client->dev, "read error, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	if (sr & ISL12026_REG_SR_RTCF)
		FUNC3(&client->dev, "Real-Time Clock Failure on read\n");
	if (sr & ISL12026_REG_SR_OSCF)
		FUNC3(&client->dev, "Oscillator Failure on read\n");

	/* Second, CCR regs */
	addr[0] = 0;
	addr[1] = ISL12026_REG_SC;
	msgs[1].len = sizeof(ccr);
	msgs[1].buf = ccr;

	ret = FUNC4(client->adapter, msgs, FUNC0(msgs));
	if (ret != FUNC0(msgs)) {
		FUNC2(&client->dev, "read error, ret=%d\n", ret);
		ret = ret < 0 ? ret : -EIO;
		goto out;
	}

	tm->tm_sec = FUNC1(ccr[0] & 0x7F);
	tm->tm_min = FUNC1(ccr[1] & 0x7F);
	if (ccr[2] & ISL12026_REG_HR_MIL)
		tm->tm_hour = FUNC1(ccr[2] & 0x3F);
	else
		tm->tm_hour = FUNC1(ccr[2] & 0x1F) +
			((ccr[2] & 0x20) ? 12 : 0);
	tm->tm_mday = FUNC1(ccr[3] & 0x3F);
	tm->tm_mon = FUNC1(ccr[4] & 0x1F) - 1;
	tm->tm_year = FUNC1(ccr[5]);
	if (FUNC1(ccr[7]) == 20)
		tm->tm_year += 100;
	tm->tm_wday = ccr[6] & 0x07;

	ret = 0;
out:
	return ret;
}