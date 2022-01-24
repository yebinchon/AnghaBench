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
struct twl_rtc {int /*<<< orphan*/ * reg_map; } ;
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ALL_TIME_REGS ; 
 unsigned char BIT_RTC_CTRL_REG_STOP_RTC_M ; 
 int /*<<< orphan*/  REG_RTC_CTRL_REG ; 
 size_t REG_SECONDS_REG ; 
 int /*<<< orphan*/  TWL_MODULE_RTC ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct twl_rtc* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct twl_rtc*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct twl_rtc*,unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct twl_rtc *twl_rtc = FUNC2(dev);
	unsigned char save_control;
	unsigned char rtc_data[ALL_TIME_REGS];
	int ret;

	rtc_data[0] = FUNC0(tm->tm_sec);
	rtc_data[1] = FUNC0(tm->tm_min);
	rtc_data[2] = FUNC0(tm->tm_hour);
	rtc_data[3] = FUNC0(tm->tm_mday);
	rtc_data[4] = FUNC0(tm->tm_mon + 1);
	rtc_data[5] = FUNC0(tm->tm_year - 100);

	/* Stop RTC while updating the TC registers */
	ret = FUNC4(twl_rtc, &save_control, REG_RTC_CTRL_REG);
	if (ret < 0)
		goto out;

	save_control &= ~BIT_RTC_CTRL_REG_STOP_RTC_M;
	ret = FUNC5(twl_rtc, save_control, REG_RTC_CTRL_REG);
	if (ret < 0)
		goto out;

	/* update all the time registers in one shot */
	ret = FUNC3(TWL_MODULE_RTC, rtc_data,
		(twl_rtc->reg_map[REG_SECONDS_REG]), ALL_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "rtc_set_time error %d\n", ret);
		goto out;
	}

	/* Start back RTC */
	save_control |= BIT_RTC_CTRL_REG_STOP_RTC_M;
	ret = FUNC5(twl_rtc, save_control, REG_RTC_CTRL_REG);

out:
	return ret;
}