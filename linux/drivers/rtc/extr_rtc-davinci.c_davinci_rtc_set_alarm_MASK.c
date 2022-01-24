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
typedef  int u16 ;
struct rtc_time {scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; } ;
struct rtc_wkalrm {struct rtc_time time; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PRTCSS_RTC_ADAY0 ; 
 int /*<<< orphan*/  PRTCSS_RTC_ADAY1 ; 
 int /*<<< orphan*/  PRTCSS_RTC_AHOUR ; 
 int /*<<< orphan*/  PRTCSS_RTC_AMIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,struct rtc_time*) ; 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_rtc*) ; 
 struct davinci_rtc* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtc_time*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct davinci_rtc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct rtc_wkalrm *alm)
{
	struct davinci_rtc *davinci_rtc = FUNC4(dev);
	unsigned long flags;
	u16 days;

	if (alm->time.tm_mday <= 0 && alm->time.tm_mon < 0
	    && alm->time.tm_year < 0) {
		struct rtc_time tm;
		unsigned long now, then;

		FUNC2(dev, &tm);
		FUNC6(&tm, &now);

		alm->time.tm_mday = tm.tm_mday;
		alm->time.tm_mon = tm.tm_mon;
		alm->time.tm_year = tm.tm_year;
		FUNC6(&alm->time, &then);

		if (then < now) {
			FUNC5(now + 24 * 60 * 60, &tm);
			alm->time.tm_mday = tm.tm_mday;
			alm->time.tm_mon = tm.tm_mon;
			alm->time.tm_year = tm.tm_year;
		}
	}

	if (FUNC1(&days, &alm->time) < 0)
		return -EINVAL;

	FUNC8(&davinci_rtc_lock, flags);

	FUNC3(davinci_rtc);
	FUNC7(davinci_rtc, FUNC0(alm->time.tm_min), PRTCSS_RTC_AMIN);

	FUNC3(davinci_rtc);
	FUNC7(davinci_rtc, FUNC0(alm->time.tm_hour), PRTCSS_RTC_AHOUR);

	FUNC3(davinci_rtc);
	FUNC7(davinci_rtc, days & 0xFF, PRTCSS_RTC_ADAY0);

	FUNC3(davinci_rtc);
	FUNC7(davinci_rtc, (days & 0xFF00) >> 8, PRTCSS_RTC_ADAY1);

	FUNC9(&davinci_rtc_lock, flags);

	return 0;
}