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
struct pm80x_rtc_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  map; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM800_RTC_COUNTER1 ; 
 int /*<<< orphan*/  PM800_RTC_EXPIRE2_1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long,...) ; 
 struct pm80x_rtc_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,struct rtc_time*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct pm80x_rtc_info *info = FUNC1(dev);
	unsigned char buf[4];
	unsigned long ticks, base, data;
	FUNC2(info->map, PM800_RTC_EXPIRE2_1, buf, 4);
	base = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
		(buf[1] << 8) | buf[0];
	FUNC0(info->dev, "%x-%x-%x-%x\n", buf[0], buf[1], buf[2], buf[3]);

	/* load 32-bit read-only counter */
	FUNC2(info->map, PM800_RTC_COUNTER1, buf, 4);
	data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
		(buf[1] << 8) | buf[0];
	ticks = base + data;
	FUNC0(info->dev, "get base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
		base, data, ticks);
	FUNC3(ticks, tm);
	return 0;
}