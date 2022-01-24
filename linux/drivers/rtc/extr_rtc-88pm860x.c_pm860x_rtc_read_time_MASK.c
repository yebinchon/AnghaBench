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
struct rtc_time {int dummy; } ;
struct pm860x_rtc_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM8607_RTC_COUNTER1 ; 
 int /*<<< orphan*/  REG0_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long,...) ; 
 struct pm860x_rtc_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	struct pm860x_rtc_info *info = FUNC1(dev);
	unsigned char buf[8];
	unsigned long ticks, base, data;

	FUNC3(info->i2c, REG0_ADDR, 8, buf);
	FUNC0(info->dev, "%x-%x-%x-%x-%x-%x-%x-%x\n", buf[0], buf[1],
		buf[2], buf[3], buf[4], buf[5], buf[6], buf[7]);
	base = ((unsigned long)buf[1] << 24) | (buf[3] << 16) |
		(buf[5] << 8) | buf[7];

	/* load 32-bit read-only counter */
	FUNC2(info->i2c, PM8607_RTC_COUNTER1, 4, buf);
	data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
		(buf[1] << 8) | buf[0];
	ticks = base + data;
	FUNC0(info->dev, "get base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
		base, data, ticks);

	FUNC4(ticks, tm);

	return 0;
}