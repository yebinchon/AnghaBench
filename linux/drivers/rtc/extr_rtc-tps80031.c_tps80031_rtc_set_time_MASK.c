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
struct rtc_time {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {struct device* parent; } ;

/* Variables and functions */
 int RTC_YEAR_OFFSET ; 
 int /*<<< orphan*/  STOP_RTC ; 
 int /*<<< orphan*/  TPS80031_RTC_CTRL_REG ; 
 int /*<<< orphan*/  TPS80031_RTC_TIME_NUM_REGS ; 
 int /*<<< orphan*/  TPS80031_SECONDS_REG ; 
 int /*<<< orphan*/  TPS80031_SLAVE_ID1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_time *tm)
{
	u8 buff[7];
	int ret;

	buff[0] = FUNC0(tm->tm_sec);
	buff[1] = FUNC0(tm->tm_min);
	buff[2] = FUNC0(tm->tm_hour);
	buff[3] = FUNC0(tm->tm_mday);
	buff[4] = FUNC0(tm->tm_mon + 1);
	buff[5] = FUNC0(tm->tm_year % RTC_YEAR_OFFSET);
	buff[6] = FUNC0(tm->tm_wday);

	/* Stop RTC while updating the RTC time registers */
	ret = FUNC2(dev->parent, TPS80031_SLAVE_ID1,
				TPS80031_RTC_CTRL_REG, STOP_RTC);
	if (ret < 0) {
		FUNC1(dev->parent, "Stop RTC failed, err = %d\n", ret);
		return ret;
	}

	ret = FUNC4(dev->parent, TPS80031_SLAVE_ID1,
			TPS80031_SECONDS_REG,
			TPS80031_RTC_TIME_NUM_REGS, buff);
	if (ret < 0) {
		FUNC1(dev, "writing RTC_SECONDS_REG failed, err %d\n", ret);
		return ret;
	}

	ret = FUNC3(dev->parent, TPS80031_SLAVE_ID1,
				TPS80031_RTC_CTRL_REG, STOP_RTC);
	if (ret < 0)
		FUNC1(dev->parent, "Start RTC failed, err = %d\n", ret);
	return ret;
}