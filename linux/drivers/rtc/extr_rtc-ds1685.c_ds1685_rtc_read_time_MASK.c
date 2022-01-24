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
struct rtc_time {int tm_year; scalar_t__ tm_isdst; void* tm_mon; void* tm_mday; int /*<<< orphan*/  tm_yday; void* tm_wday; void* tm_hour; void* tm_min; void* tm_sec; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CENTURY ; 
 int /*<<< orphan*/  RTC_CENTURY_MASK ; 
 int /*<<< orphan*/  RTC_CTRL_B ; 
 int /*<<< orphan*/  RTC_HRS ; 
 int /*<<< orphan*/  RTC_HRS_24_BCD_MASK ; 
 int /*<<< orphan*/  RTC_HRS_24_BIN_MASK ; 
 int /*<<< orphan*/  RTC_MDAY ; 
 int /*<<< orphan*/  RTC_MDAY_BCD_MASK ; 
 int /*<<< orphan*/  RTC_MDAY_BIN_MASK ; 
 int /*<<< orphan*/  RTC_MINS ; 
 int /*<<< orphan*/  RTC_MINS_BCD_MASK ; 
 int /*<<< orphan*/  RTC_MINS_BIN_MASK ; 
 int /*<<< orphan*/  RTC_MONTH ; 
 int /*<<< orphan*/  RTC_MONTH_BCD_MASK ; 
 int /*<<< orphan*/  RTC_MONTH_BIN_MASK ; 
 int /*<<< orphan*/  RTC_SECS ; 
 int /*<<< orphan*/  RTC_SECS_BCD_MASK ; 
 int /*<<< orphan*/  RTC_SECS_BIN_MASK ; 
 int /*<<< orphan*/  RTC_WDAY ; 
 int /*<<< orphan*/  RTC_WDAY_MASK ; 
 int /*<<< orphan*/  RTC_YEAR ; 
 int /*<<< orphan*/  RTC_YEAR_BCD_MASK ; 
 int /*<<< orphan*/  RTC_YEAR_BIN_MASK ; 
 struct ds1685_priv* FUNC0 (struct device*) ; 
 void* FUNC1 (struct ds1685_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int FUNC5 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct device *dev, struct rtc_time *tm)
{
	struct ds1685_priv *rtc = FUNC0(dev);
	u8 ctrlb, century;
	u8 seconds, minutes, hours, wday, mday, month, years;

	/* Fetch the time info from the RTC registers. */
	FUNC2(rtc);
	seconds = rtc->read(rtc, RTC_SECS);
	minutes = rtc->read(rtc, RTC_MINS);
	hours   = rtc->read(rtc, RTC_HRS);
	wday    = rtc->read(rtc, RTC_WDAY);
	mday    = rtc->read(rtc, RTC_MDAY);
	month   = rtc->read(rtc, RTC_MONTH);
	years   = rtc->read(rtc, RTC_YEAR);
	century = rtc->read(rtc, RTC_CENTURY);
	ctrlb   = rtc->read(rtc, RTC_CTRL_B);
	FUNC3(rtc);

	/* bcd2bin if needed, perform fixups, and store to rtc_time. */
	years        = FUNC1(rtc, years, RTC_YEAR_BCD_MASK,
					  RTC_YEAR_BIN_MASK);
	century      = FUNC1(rtc, century, RTC_CENTURY_MASK,
					  RTC_CENTURY_MASK);
	tm->tm_sec   = FUNC1(rtc, seconds, RTC_SECS_BCD_MASK,
					  RTC_SECS_BIN_MASK);
	tm->tm_min   = FUNC1(rtc, minutes, RTC_MINS_BCD_MASK,
					  RTC_MINS_BIN_MASK);
	tm->tm_hour  = FUNC1(rtc, hours, RTC_HRS_24_BCD_MASK,
					  RTC_HRS_24_BIN_MASK);
	tm->tm_wday  = (FUNC1(rtc, wday, RTC_WDAY_MASK,
					   RTC_WDAY_MASK) - 1);
	tm->tm_mday  = FUNC1(rtc, mday, RTC_MDAY_BCD_MASK,
					  RTC_MDAY_BIN_MASK);
	tm->tm_mon   = (FUNC1(rtc, month, RTC_MONTH_BCD_MASK,
					   RTC_MONTH_BIN_MASK) - 1);
	tm->tm_year  = ((years + (century * 100)) - 1900);
	tm->tm_yday  = FUNC4(tm->tm_mday, tm->tm_mon, tm->tm_year);
	tm->tm_isdst = 0; /* RTC has hardcoded timezone, so don't use. */

	return 0;
}