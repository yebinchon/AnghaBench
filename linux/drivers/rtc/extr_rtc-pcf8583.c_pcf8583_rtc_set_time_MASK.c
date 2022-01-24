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
typedef  int /*<<< orphan*/  year ;
struct rtc_time {int tm_year; } ;
struct rtc_mem {int nr; unsigned char* data; int /*<<< orphan*/  loc; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMOS_CHECKSUM ; 
 int /*<<< orphan*/  CMOS_YEAR ; 
 int FUNC0 (struct i2c_client*,struct rtc_mem*) ; 
 int FUNC1 (struct i2c_client*,struct rtc_time*,int) ; 
 int FUNC2 (struct i2c_client*,struct rtc_mem*) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct i2c_client *client = FUNC3(dev);
	unsigned char year[2], chk;
	struct rtc_mem cmos_year  = {
		.loc = CMOS_YEAR,
		.nr = sizeof(year),
		.data = year
	};
	struct rtc_mem cmos_check = {
		.loc = CMOS_CHECKSUM,
		.nr = 1,
		.data = &chk
	};
	unsigned int proper_year = tm->tm_year + 1900;
	int ret;

	/*
	 * The RTC's own 2-bit year must reflect the least
	 * significant two bits of the CMOS year.
	 */

	ret = FUNC1(client, tm, 1);
	if (ret)
		return ret;

	ret = FUNC0(client, &cmos_check);
	if (ret)
		return ret;

	ret = FUNC0(client, &cmos_year);
	if (ret)
		return ret;

	chk -= year[1] + year[0];

	year[1] = proper_year / 100;
	year[0] = proper_year % 100;

	chk += year[1] + year[0];

	ret = FUNC2(client, &cmos_year);

	if (ret)
		return ret;

	ret = FUNC2(client, &cmos_check);

	return ret;
}