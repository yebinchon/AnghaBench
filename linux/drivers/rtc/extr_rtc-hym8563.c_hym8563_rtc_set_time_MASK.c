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
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_wday; int tm_mon; } ;
struct i2c_client {int dummy; } ;
struct hym8563 {int valid; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HYM8563_CTL1 ; 
 int /*<<< orphan*/  HYM8563_CTL1_STOP ; 
 int /*<<< orphan*/  HYM8563_SEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct hym8563* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC4(dev);
	struct hym8563 *hym8563 = FUNC1(client);
	u8 buf[7];
	int ret;

	/* Years >= 2100 are to far in the future, 19XX is to early */
	if (tm->tm_year < 100 || tm->tm_year >= 200)
		return -EINVAL;

	buf[0] = FUNC0(tm->tm_sec);
	buf[1] = FUNC0(tm->tm_min);
	buf[2] = FUNC0(tm->tm_hour);
	buf[3] = FUNC0(tm->tm_mday);
	buf[4] = FUNC0(tm->tm_wday);
	buf[5] = FUNC0(tm->tm_mon + 1);

	/*
	 * While the HYM8563 has a century flag in the month register,
	 * it does not seem to carry it over a subsequent write/read.
	 * So we'll limit ourself to 100 years, starting at 2000 for now.
	 */
	buf[6] = FUNC0(tm->tm_year - 100);

	/*
	 * CTL1 only contains TEST-mode bits apart from stop,
	 * so no need to read the value first
	 */
	ret = FUNC2(client, HYM8563_CTL1,
						HYM8563_CTL1_STOP);
	if (ret < 0)
		return ret;

	ret = FUNC3(client, HYM8563_SEC, 7, buf);
	if (ret < 0)
		return ret;

	ret = FUNC2(client, HYM8563_CTL1, 0);
	if (ret < 0)
		return ret;

	hym8563->valid = true;

	return 0;
}