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
typedef  int u16 ;
struct rtc_time {int /*<<< orphan*/  tm_hour; int /*<<< orphan*/  tm_min; int /*<<< orphan*/  tm_sec; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PRTCSS_RTC_CCTRL ; 
 int PRTCSS_RTC_CCTRL_CAEN ; 
 int /*<<< orphan*/  PRTCSS_RTC_DAY0 ; 
 int /*<<< orphan*/  PRTCSS_RTC_DAY1 ; 
 int /*<<< orphan*/  PRTCSS_RTC_HOUR ; 
 int /*<<< orphan*/  PRTCSS_RTC_MIN ; 
 int /*<<< orphan*/  PRTCSS_RTC_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int*,struct rtc_time*) ; 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_rtc*) ; 
 struct davinci_rtc* FUNC3 (struct device*) ; 
 int FUNC4 (struct davinci_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_rtc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_time *tm)
{
	struct davinci_rtc *davinci_rtc = FUNC3(dev);
	u16 days;
	u8 rtc_cctrl;
	unsigned long flags;

	if (FUNC1(&days, tm) < 0)
		return -EINVAL;

	FUNC6(&davinci_rtc_lock, flags);

	FUNC2(davinci_rtc);
	FUNC5(davinci_rtc, FUNC0(tm->tm_sec), PRTCSS_RTC_SEC);

	FUNC2(davinci_rtc);
	FUNC5(davinci_rtc, FUNC0(tm->tm_min), PRTCSS_RTC_MIN);

	FUNC2(davinci_rtc);
	FUNC5(davinci_rtc, FUNC0(tm->tm_hour), PRTCSS_RTC_HOUR);

	FUNC2(davinci_rtc);
	FUNC5(davinci_rtc, days & 0xFF, PRTCSS_RTC_DAY0);

	FUNC2(davinci_rtc);
	FUNC5(davinci_rtc, (days & 0xFF00) >> 8, PRTCSS_RTC_DAY1);

	rtc_cctrl = FUNC4(davinci_rtc, PRTCSS_RTC_CCTRL);
	rtc_cctrl |= PRTCSS_RTC_CCTRL_CAEN;
	FUNC5(davinci_rtc, rtc_cctrl, PRTCSS_RTC_CCTRL);

	FUNC7(&davinci_rtc_lock, flags);

	return 0;
}