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
struct rtc_time {unsigned char tm_year; unsigned char tm_wday; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct i2c_msg {int len; unsigned char* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 void* FUNC0 (unsigned char) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, struct rtc_time *dt)
{
	unsigned char buf[8], addr[1] = { 1 };
	struct i2c_msg msgs[2] = {
		{
			.addr = client->addr,
			.flags = 0,
			.len = 1,
			.buf = addr,
		}, {
			.addr = client->addr,
			.flags = I2C_M_RD,
			.len = 6,
			.buf = buf,
		}
	};
	int ret;

	FUNC2(buf, 0, sizeof(buf));

	ret = FUNC1(client->adapter, msgs, 2);
	if (ret == 2) {
		dt->tm_year = buf[4] >> 6;
		dt->tm_wday = buf[5] >> 5;

		buf[4] &= 0x3f;
		buf[5] &= 0x1f;

		dt->tm_sec = FUNC0(buf[1]);
		dt->tm_min = FUNC0(buf[2]);
		dt->tm_hour = FUNC0(buf[3]);
		dt->tm_mday = FUNC0(buf[4]);
		dt->tm_mon = FUNC0(buf[5]) - 1;
	}

	return ret == 2 ? 0 : -EIO;
}