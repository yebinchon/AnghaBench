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
typedef  unsigned int u8 ;
struct rtc_time {void* tm_year; void* tm_mon; void* tm_mday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct ds3232 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS3232_REG_SECONDS ; 
 void* FUNC0 (unsigned int) ; 
 struct ds3232* FUNC1 (struct device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *time)
{
	struct ds3232 *ds3232 = FUNC1(dev);
	int ret;
	u8 buf[7];
	unsigned int year, month, day, hour, minute, second;
	unsigned int week, twelve_hr, am_pm;
	unsigned int century, add_century = 0;

	ret = FUNC2(ds3232->regmap, DS3232_REG_SECONDS, buf, 7);
	if (ret)
		return ret;

	second = buf[0];
	minute = buf[1];
	hour = buf[2];
	week = buf[3];
	day = buf[4];
	month = buf[5];
	year = buf[6];

	/* Extract additional information for AM/PM and century */

	twelve_hr = hour & 0x40;
	am_pm = hour & 0x20;
	century = month & 0x80;

	/* Write to rtc_time structure */

	time->tm_sec = FUNC0(second);
	time->tm_min = FUNC0(minute);
	if (twelve_hr) {
		/* Convert to 24 hr */
		if (am_pm)
			time->tm_hour = FUNC0(hour & 0x1F) + 12;
		else
			time->tm_hour = FUNC0(hour & 0x1F);
	} else {
		time->tm_hour = FUNC0(hour);
	}

	/* Day of the week in linux range is 0~6 while 1~7 in RTC chip */
	time->tm_wday = FUNC0(week) - 1;
	time->tm_mday = FUNC0(day);
	/* linux tm_mon range:0~11, while month range is 1~12 in RTC chip */
	time->tm_mon = FUNC0(month & 0x7F) - 1;
	if (century)
		add_century = 100;

	time->tm_year = FUNC0(year) + add_century;

	return 0;
}