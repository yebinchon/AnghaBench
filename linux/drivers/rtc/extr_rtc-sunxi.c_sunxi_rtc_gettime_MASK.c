#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sunxi_rtc_dev {TYPE_1__* data_year; scalar_t__ base; } ;
struct rtc_time {int tm_mon; int /*<<< orphan*/  tm_year; int /*<<< orphan*/  tm_mday; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SUNXI_RTC_HMS ; 
 scalar_t__ SUNXI_RTC_YMD ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 struct sunxi_rtc_dev* FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_time *rtc_tm)
{
	struct sunxi_rtc_dev *chip = FUNC7(dev);
	u32 date, time;

	/*
	 * read again in case it changes
	 */
	do {
		date = FUNC8(chip->base + SUNXI_RTC_YMD);
		time = FUNC8(chip->base + SUNXI_RTC_HMS);
	} while ((date != FUNC8(chip->base + SUNXI_RTC_YMD)) ||
		 (time != FUNC8(chip->base + SUNXI_RTC_HMS)));

	rtc_tm->tm_sec  = FUNC5(time);
	rtc_tm->tm_min  = FUNC4(time);
	rtc_tm->tm_hour = FUNC3(time);

	rtc_tm->tm_mday = FUNC0(date);
	rtc_tm->tm_mon  = FUNC1(date);
	rtc_tm->tm_year = FUNC2(date,
					chip->data_year->mask);

	rtc_tm->tm_mon  -= 1;

	/*
	 * switch from (data_year->min)-relative offset to
	 * a (1900)-relative one
	 */
	rtc_tm->tm_year += FUNC6(chip->data_year);

	return 0;
}