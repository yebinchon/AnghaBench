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
struct rtc_time {scalar_t__ tm_year; scalar_t__ tm_mon; scalar_t__ tm_mday; scalar_t__ tm_hour; scalar_t__ tm_min; scalar_t__ tm_sec; } ;
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int PALMAS_NUM_TIME_REGS ; 
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_CTRL_REG ; 
 int /*<<< orphan*/  PALMAS_RTC_CTRL_REG_STOP_RTC ; 
 int /*<<< orphan*/  PALMAS_SECONDS_REG ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct palmas* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	unsigned char rtc_data[PALMAS_NUM_TIME_REGS];
	struct palmas *palmas = FUNC2(dev->parent);
	int ret;

	rtc_data[0] = FUNC0(tm->tm_sec);
	rtc_data[1] = FUNC0(tm->tm_min);
	rtc_data[2] = FUNC0(tm->tm_hour);
	rtc_data[3] = FUNC0(tm->tm_mday);
	rtc_data[4] = FUNC0(tm->tm_mon + 1);
	rtc_data[5] = FUNC0(tm->tm_year - 100);

	/* Stop RTC while updating the RTC time registers */
	ret = FUNC4(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
		PALMAS_RTC_CTRL_REG_STOP_RTC, 0);
	if (ret < 0) {
		FUNC1(dev, "RTC stop failed, err = %d\n", ret);
		return ret;
	}

	ret = FUNC3(palmas, PALMAS_RTC_BASE, PALMAS_SECONDS_REG,
		rtc_data, PALMAS_NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "RTC_SECONDS reg write failed, err = %d\n", ret);
		return ret;
	}

	/* Start back RTC */
	ret = FUNC4(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
		PALMAS_RTC_CTRL_REG_STOP_RTC, PALMAS_RTC_CTRL_REG_STOP_RTC);
	if (ret < 0)
		FUNC1(dev, "RTC start failed, err = %d\n", ret);
	return ret;
}