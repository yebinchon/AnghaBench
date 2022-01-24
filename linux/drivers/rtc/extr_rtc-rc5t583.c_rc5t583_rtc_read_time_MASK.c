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
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct rc5t583 {int /*<<< orphan*/  regmap; } ;
struct device {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int NUM_TIME_REGS ; 
 int /*<<< orphan*/  RC5T583_RTC_SEC ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct rc5t583* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct rc5t583 *rc5t583 = FUNC2(dev->parent);
	u8 rtc_data[NUM_TIME_REGS];
	int ret;

	ret = FUNC3(rc5t583->regmap, RC5T583_RTC_SEC, rtc_data,
		NUM_TIME_REGS);
	if (ret < 0) {
		FUNC1(dev, "RTC read time failed with err:%d\n", ret);
		return ret;
	}

	tm->tm_sec = FUNC0(rtc_data[0]);
	tm->tm_min = FUNC0(rtc_data[1]);
	tm->tm_hour = FUNC0(rtc_data[2]);
	tm->tm_wday = FUNC0(rtc_data[3]);
	tm->tm_mday = FUNC0(rtc_data[4]);
	tm->tm_mon = FUNC0(rtc_data[5]) - 1;
	tm->tm_year = FUNC0(rtc_data[6]) + 100;

	return ret;
}