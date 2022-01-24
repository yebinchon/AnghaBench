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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct palmas {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int PALMAS_NUM_TIME_REGS ; 
 int /*<<< orphan*/  PALMAS_RTC_BASE ; 
 int /*<<< orphan*/  PALMAS_RTC_CTRL_REG ; 
 int /*<<< orphan*/  PALMAS_RTC_CTRL_REG_GET_TIME ; 
 int /*<<< orphan*/  PALMAS_SECONDS_REG ; 
 void* FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct palmas* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (struct palmas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	unsigned char rtc_data[PALMAS_NUM_TIME_REGS];
	struct palmas *palmas = FUNC2(dev->parent);
	int ret;

	/* Copy RTC counting registers to static registers or latches */
	ret = FUNC4(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
		PALMAS_RTC_CTRL_REG_GET_TIME, PALMAS_RTC_CTRL_REG_GET_TIME);
	if (ret < 0) {
		FUNC1(dev, "RTC CTRL reg update failed, err: %d\n", ret);
		return ret;
	}

	ret = FUNC3(palmas, PALMAS_RTC_BASE, PALMAS_SECONDS_REG,
			rtc_data, PALMAS_NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "RTC_SECONDS reg read failed, err = %d\n", ret);
		return ret;
	}

	tm->tm_sec = FUNC0(rtc_data[0]);
	tm->tm_min = FUNC0(rtc_data[1]);
	tm->tm_hour = FUNC0(rtc_data[2]);
	tm->tm_mday = FUNC0(rtc_data[3]);
	tm->tm_mon = FUNC0(rtc_data[4]) - 1;
	tm->tm_year = FUNC0(rtc_data[5]) + 100;

	return ret;
}