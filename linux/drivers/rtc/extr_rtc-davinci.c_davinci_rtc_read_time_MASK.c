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
struct rtc_time {void* tm_hour; void* tm_min; void* tm_sec; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PRTCSS_RTC_DAY0 ; 
 int /*<<< orphan*/  PRTCSS_RTC_DAY1 ; 
 int /*<<< orphan*/  PRTCSS_RTC_HOUR ; 
 int /*<<< orphan*/  PRTCSS_RTC_MIN ; 
 int /*<<< orphan*/  PRTCSS_RTC_SEC ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,struct rtc_time*) ; 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_rtc*) ; 
 struct davinci_rtc* FUNC3 (struct device*) ; 
 int FUNC4 (struct davinci_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct davinci_rtc *davinci_rtc = FUNC3(dev);
	u16 days = 0;
	u8 day0, day1;
	unsigned long flags;

	FUNC5(&davinci_rtc_lock, flags);

	FUNC2(davinci_rtc);
	tm->tm_sec = FUNC0(FUNC4(davinci_rtc, PRTCSS_RTC_SEC));

	FUNC2(davinci_rtc);
	tm->tm_min = FUNC0(FUNC4(davinci_rtc, PRTCSS_RTC_MIN));

	FUNC2(davinci_rtc);
	tm->tm_hour = FUNC0(FUNC4(davinci_rtc, PRTCSS_RTC_HOUR));

	FUNC2(davinci_rtc);
	day0 = FUNC4(davinci_rtc, PRTCSS_RTC_DAY0);

	FUNC2(davinci_rtc);
	day1 = FUNC4(davinci_rtc, PRTCSS_RTC_DAY1);

	FUNC6(&davinci_rtc_lock, flags);

	days |= day1;
	days <<= 8;
	days |= day0;

	if (FUNC1(days, tm) < 0)
		return -EINVAL;

	return 0;
}