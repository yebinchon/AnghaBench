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
struct rtc_wkalrm {int enabled; int pending; int /*<<< orphan*/  time; } ;
struct pm860x_rtc_info {int /*<<< orphan*/  i2c; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ALARM ; 
 int ALARM_EN ; 
 int ALARM_WAKEUP ; 
 int /*<<< orphan*/  PM8607_RTC1 ; 
 int /*<<< orphan*/  PM8607_RTC_EXPIRE1 ; 
 int /*<<< orphan*/  REG0_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,unsigned long,...) ; 
 struct pm860x_rtc_info* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_wkalrm *alrm)
{
	struct pm860x_rtc_info *info = FUNC1(dev);
	unsigned char buf[8];
	unsigned long ticks, base, data;
	int ret;

	FUNC3(info->i2c, REG0_ADDR, 8, buf);
	FUNC0(info->dev, "%x-%x-%x-%x-%x-%x-%x-%x\n", buf[0], buf[1],
		buf[2], buf[3], buf[4], buf[5], buf[6], buf[7]);
	base = ((unsigned long)buf[1] << 24) | (buf[3] << 16) |
		(buf[5] << 8) | buf[7];

	FUNC2(info->i2c, PM8607_RTC_EXPIRE1, 4, buf);
	data = ((unsigned long)buf[3] << 24) | (buf[2] << 16) |
		(buf[1] << 8) | buf[0];
	ticks = base + data;
	FUNC0(info->dev, "get base:0x%lx, RO count:0x%lx, ticks:0x%lx\n",
		base, data, ticks);

	FUNC5(ticks, &alrm->time);
	ret = FUNC4(info->i2c, PM8607_RTC1);
	alrm->enabled = (ret & ALARM_EN) ? 1 : 0;
	alrm->pending = (ret & (ALARM | ALARM_WAKEUP)) ? 1 : 0;
	return 0;
}