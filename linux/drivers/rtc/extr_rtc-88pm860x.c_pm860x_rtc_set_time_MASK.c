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
struct rtc_time {int tm_year; } ;
struct pm860x_rtc_info {int /*<<< orphan*/  (* sync ) (unsigned long) ;int /*<<< orphan*/  i2c; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PM8607_RTC_COUNTER1 ; 
 int /*<<< orphan*/  REG0_DATA ; 
 int /*<<< orphan*/  REG1_DATA ; 
 int /*<<< orphan*/  REG2_DATA ; 
 int /*<<< orphan*/  REG3_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 struct pm860x_rtc_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct pm860x_rtc_info *info = FUNC1(dev);
	unsigned char buf[4];
	unsigned long ticks, base, data;

	if (tm->tm_year > 206) {
		FUNC0(info->dev, "Set time %d out of range. "
			"Please set time between 1970 to 2106.\n",
			1900 + tm->tm_year);
		return -EINVAL;
	}
	FUNC4(tm, &ticks);

	/* load 32-bit read-only counter */
	FUNC2(info->i2c, PM8607_RTC_COUNTER1, 4, buf);
	data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
		(buf[1] << 8) | buf[0];
	base = ticks - data;
	FUNC0(info->dev, "set base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
		base, data, ticks);

	FUNC3(info->i2c, REG0_DATA, (base >> 24) & 0xFF);
	FUNC3(info->i2c, REG1_DATA, (base >> 16) & 0xFF);
	FUNC3(info->i2c, REG2_DATA, (base >> 8) & 0xFF);
	FUNC3(info->i2c, REG3_DATA, base & 0xFF);

	if (info->sync)
		info->sync(ticks);
	return 0;
}