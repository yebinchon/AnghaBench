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
typedef  int u32 ;
struct sunxi_rtc_dev {scalar_t__ base; TYPE_1__* data_year; } ;
struct rtc_time {int tm_year; int tm_mon; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_mday; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int min; unsigned int max; int /*<<< orphan*/  leap_shift; int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUNXI_LOSC_CTRL ; 
 int /*<<< orphan*/  SUNXI_LOSC_CTRL_RTC_HMS_ACC ; 
 int /*<<< orphan*/  SUNXI_LOSC_CTRL_RTC_YMD_ACC ; 
 scalar_t__ SUNXI_RTC_HMS ; 
 scalar_t__ SUNXI_RTC_YMD ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 struct sunxi_rtc_dev* FUNC9 (struct device*) ; 
 scalar_t__ FUNC10 (unsigned int) ; 
 scalar_t__ FUNC11 (struct sunxi_rtc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(struct device *dev, struct rtc_time *rtc_tm)
{
	struct sunxi_rtc_dev *chip = FUNC9(dev);
	u32 date = 0;
	u32 time = 0;
	unsigned int year;

	/*
	 * the input rtc_tm->tm_year is the offset relative to 1900. We use
	 * the SUNXI_YEAR_OFF macro to rebase it with respect to the min year
	 * allowed by the hardware
	 */

	year = rtc_tm->tm_year + 1900;
	if (year < chip->data_year->min || year > chip->data_year->max) {
		FUNC8(dev, "rtc only supports year in range %u - %u\n",
			chip->data_year->min, chip->data_year->max);
		return -EINVAL;
	}

	rtc_tm->tm_year -= FUNC7(chip->data_year);
	rtc_tm->tm_mon += 1;

	date = FUNC0(rtc_tm->tm_mday) |
		FUNC1(rtc_tm->tm_mon)  |
		FUNC2(rtc_tm->tm_year,
				chip->data_year->mask);

	if (FUNC10(year))
		date |= FUNC3(1, chip->data_year->leap_shift);

	time = FUNC6(rtc_tm->tm_sec)  |
		FUNC5(rtc_tm->tm_min)  |
		FUNC4(rtc_tm->tm_hour);

	FUNC12(0, chip->base + SUNXI_RTC_HMS);
	FUNC12(0, chip->base + SUNXI_RTC_YMD);

	FUNC12(time, chip->base + SUNXI_RTC_HMS);

	/*
	 * After writing the RTC HH-MM-SS register, the
	 * SUNXI_LOSC_CTRL_RTC_HMS_ACC bit is set and it will not
	 * be cleared until the real writing operation is finished
	 */

	if (FUNC11(chip, SUNXI_LOSC_CTRL,
				SUNXI_LOSC_CTRL_RTC_HMS_ACC, 50)) {
		FUNC8(dev, "Failed to set rtc time.\n");
		return -1;
	}

	FUNC12(date, chip->base + SUNXI_RTC_YMD);

	/*
	 * After writing the RTC YY-MM-DD register, the
	 * SUNXI_LOSC_CTRL_RTC_YMD_ACC bit is set and it will not
	 * be cleared until the real writing operation is finished
	 */

	if (FUNC11(chip, SUNXI_LOSC_CTRL,
				SUNXI_LOSC_CTRL_RTC_YMD_ACC, 50)) {
		FUNC8(dev, "Failed to set rtc time.\n");
		return -1;
	}

	return 0;
}