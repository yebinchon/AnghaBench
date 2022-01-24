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
struct rtc_time {int tm_year; int tm_mday; int tm_mon; scalar_t__ tm_wday; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CDNS_RTC_CALR ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_C ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_D ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_DAY ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_M ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_Y ; 
 int CDNS_RTC_MAX_REGS_TRIES ; 
 scalar_t__ CDNS_RTC_STSR ; 
 int CDNS_RTC_STSR_VT_VC ; 
 scalar_t__ CDNS_RTC_TIMR ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_rtc*,int) ; 
 int FUNC3 (struct rtc_time*) ; 
 struct cdns_rtc* FUNC4 (struct device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct cdns_rtc *crtc = FUNC4(dev);
	u32 timr, calr, stsr;
	int ret = -EIO;
	int year = tm->tm_year + 1900;
	int tries;

	FUNC2(crtc, false);

	timr = FUNC3(tm);

	calr = FUNC0(CDNS_RTC_CAL_D, FUNC1(tm->tm_mday))
	     | FUNC0(CDNS_RTC_CAL_M, FUNC1(tm->tm_mon + 1))
	     | FUNC0(CDNS_RTC_CAL_Y, FUNC1(year % 100))
	     | FUNC0(CDNS_RTC_CAL_C, FUNC1(year / 100))
	     | FUNC0(CDNS_RTC_CAL_DAY, tm->tm_wday + 1);

	/* Update registers, check valid flags */
	for (tries = 0; tries < CDNS_RTC_MAX_REGS_TRIES; tries++) {
		FUNC6(timr, crtc->regs + CDNS_RTC_TIMR);
		FUNC6(calr, crtc->regs + CDNS_RTC_CALR);
		stsr = FUNC5(crtc->regs + CDNS_RTC_STSR);

		if ((stsr & CDNS_RTC_STSR_VT_VC) == CDNS_RTC_STSR_VT_VC) {
			ret = 0;
			break;
		}
	}

	FUNC2(crtc, true);
	return ret;
}