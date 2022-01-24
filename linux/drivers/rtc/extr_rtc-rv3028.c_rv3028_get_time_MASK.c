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
typedef  int u8 ;
struct rv3028_data {int /*<<< orphan*/  regmap; } ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; int /*<<< orphan*/  tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int EINVAL ; 
 size_t RV3028_DAY ; 
 size_t RV3028_HOUR ; 
 size_t RV3028_MIN ; 
 size_t RV3028_MONTH ; 
 size_t RV3028_SEC ; 
 int /*<<< orphan*/  RV3028_STATUS ; 
 int RV3028_STATUS_PORF ; 
 size_t RV3028_WDAY ; 
 size_t RV3028_YEAR ; 
 void* FUNC0 (int) ; 
 struct rv3028_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	struct rv3028_data *rv3028 = FUNC1(dev);
	u8 date[7];
	int ret, status;

	ret = FUNC5(rv3028->regmap, RV3028_STATUS, &status);
	if (ret < 0)
		return ret;

	if (status & RV3028_STATUS_PORF) {
		FUNC2(dev, "Voltage low, data is invalid.\n");
		return -EINVAL;
	}

	ret = FUNC4(rv3028->regmap, RV3028_SEC, date, sizeof(date));
	if (ret)
		return ret;

	tm->tm_sec  = FUNC0(date[RV3028_SEC] & 0x7f);
	tm->tm_min  = FUNC0(date[RV3028_MIN] & 0x7f);
	tm->tm_hour = FUNC0(date[RV3028_HOUR] & 0x3f);
	tm->tm_wday = FUNC3(date[RV3028_WDAY] & 0x7f);
	tm->tm_mday = FUNC0(date[RV3028_DAY] & 0x3f);
	tm->tm_mon  = FUNC0(date[RV3028_MONTH] & 0x1f) - 1;
	tm->tm_year = FUNC0(date[RV3028_YEAR]) + 100;

	return 0;
}