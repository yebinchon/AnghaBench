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
struct spear_rtc_config {scalar_t__ ioaddr; } ;
struct rtc_time {unsigned int tm_sec; unsigned int tm_min; unsigned int tm_hour; unsigned int tm_mday; unsigned int tm_mon; unsigned int tm_year; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DATE_REG ; 
 unsigned int DAY_MASK ; 
 unsigned int HOUR_MASK ; 
 unsigned int HOUR_SHIFT ; 
 unsigned int MDAY_SHIFT ; 
 unsigned int MINUTE_SHIFT ; 
 unsigned int MIN_MASK ; 
 unsigned int MONTH_MASK ; 
 unsigned int MONTH_SHIFT ; 
 unsigned int SECOND_MASK ; 
 unsigned int SECOND_SHIFT ; 
 scalar_t__ TIME_REG ; 
 unsigned int YEAR_MASK ; 
 unsigned int YEAR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct rtc_time*) ; 
 struct spear_rtc_config* FUNC1 (struct device*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct spear_rtc_config*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	struct spear_rtc_config *config = FUNC1(dev);
	unsigned int time, date;

	/* we don't report wday/yday/isdst ... */
	FUNC3(config);

	time = FUNC2(config->ioaddr + TIME_REG);
	date = FUNC2(config->ioaddr + DATE_REG);
	tm->tm_sec = (time >> SECOND_SHIFT) & SECOND_MASK;
	tm->tm_min = (time >> MINUTE_SHIFT) & MIN_MASK;
	tm->tm_hour = (time >> HOUR_SHIFT) & HOUR_MASK;
	tm->tm_mday = (date >> MDAY_SHIFT) & DAY_MASK;
	tm->tm_mon = (date >> MONTH_SHIFT) & MONTH_MASK;
	tm->tm_year = (date >> YEAR_SHIFT) & YEAR_MASK;

	FUNC0(tm);
	return 0;
}