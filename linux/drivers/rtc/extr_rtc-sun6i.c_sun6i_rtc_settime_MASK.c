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
typedef  int u32 ;
struct sun6i_rtc_dev {scalar_t__ base; } ;
struct rtc_time {int tm_year; int tm_mon; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; int /*<<< orphan*/  tm_mday; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SUN6I_LOSC_CTRL ; 
 int /*<<< orphan*/  SUN6I_LOSC_CTRL_ACC_MASK ; 
 int /*<<< orphan*/  SUN6I_LOSC_CTRL_RTC_HMS_ACC ; 
 int /*<<< orphan*/  SUN6I_LOSC_CTRL_RTC_YMD_ACC ; 
 scalar_t__ SUN6I_RTC_HMS ; 
 scalar_t__ SUN6I_RTC_YMD ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int SUN6I_YEAR_MAX ; 
 int SUN6I_YEAR_MIN ; 
 scalar_t__ SUN6I_YEAR_OFF ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 struct sun6i_rtc_dev* FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct sun6i_rtc_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct rtc_time *rtc_tm)
{
	struct sun6i_rtc_dev *chip = FUNC8(dev);
	u32 date = 0;
	u32 time = 0;
	int year;

	year = rtc_tm->tm_year + 1900;
	if (year < SUN6I_YEAR_MIN || year > SUN6I_YEAR_MAX) {
		FUNC7(dev, "rtc only supports year in range %d - %d\n",
			SUN6I_YEAR_MIN, SUN6I_YEAR_MAX);
		return -EINVAL;
	}

	rtc_tm->tm_year -= SUN6I_YEAR_OFF;
	rtc_tm->tm_mon += 1;

	date = FUNC0(rtc_tm->tm_mday) |
		FUNC1(rtc_tm->tm_mon)  |
		FUNC2(rtc_tm->tm_year);

	if (FUNC9(year))
		date |= FUNC3(1);

	time = FUNC6(rtc_tm->tm_sec)  |
		FUNC5(rtc_tm->tm_min)  |
		FUNC4(rtc_tm->tm_hour);

	/* Check whether registers are writable */
	if (FUNC10(chip, SUN6I_LOSC_CTRL,
			   SUN6I_LOSC_CTRL_ACC_MASK, 50)) {
		FUNC7(dev, "rtc is still busy.\n");
		return -EBUSY;
	}

	FUNC11(time, chip->base + SUN6I_RTC_HMS);

	/*
	 * After writing the RTC HH-MM-SS register, the
	 * SUN6I_LOSC_CTRL_RTC_HMS_ACC bit is set and it will not
	 * be cleared until the real writing operation is finished
	 */

	if (FUNC10(chip, SUN6I_LOSC_CTRL,
			   SUN6I_LOSC_CTRL_RTC_HMS_ACC, 50)) {
		FUNC7(dev, "Failed to set rtc time.\n");
		return -ETIMEDOUT;
	}

	FUNC11(date, chip->base + SUN6I_RTC_YMD);

	/*
	 * After writing the RTC YY-MM-DD register, the
	 * SUN6I_LOSC_CTRL_RTC_YMD_ACC bit is set and it will not
	 * be cleared until the real writing operation is finished
	 */

	if (FUNC10(chip, SUN6I_LOSC_CTRL,
			   SUN6I_LOSC_CTRL_RTC_YMD_ACC, 50)) {
		FUNC7(dev, "Failed to set rtc time.\n");
		return -ETIMEDOUT;
	}

	return 0;
}