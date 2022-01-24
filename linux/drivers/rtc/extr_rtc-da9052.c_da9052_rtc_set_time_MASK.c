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
typedef  int uint8_t ;
struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; } ;
struct device {int dummy; } ;
struct da9052_rtc {int /*<<< orphan*/  da9052; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9052_COUNT_S_REG ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 struct da9052_rtc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct da9052_rtc*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct rtc_time *tm)
{
	struct da9052_rtc *rtc;
	uint8_t v[6];
	int ret;

	/* DA9052 only has 6 bits for year - to represent 2000-2063 */
	if ((tm->tm_year < 100) || (tm->tm_year > 163))
		return -EINVAL;

	rtc = FUNC1(dev);

	v[0] = tm->tm_sec;
	v[1] = tm->tm_min;
	v[2] = tm->tm_hour;
	v[3] = tm->tm_mday;
	v[4] = tm->tm_mon + 1;
	v[5] = tm->tm_year - 100;

	ret = FUNC0(rtc->da9052, DA9052_COUNT_S_REG, 6, v);
	if (ret < 0)
		FUNC2(rtc, "failed to set RTC time: %d\n", ret);
	return ret;
}