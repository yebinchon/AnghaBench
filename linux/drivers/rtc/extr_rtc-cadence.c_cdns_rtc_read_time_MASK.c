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
typedef  int /*<<< orphan*/  u32 ;
struct rtc_time {int tm_mday; int tm_mon; int tm_year; int tm_wday; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CDNS_RTC_CALR ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_C ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_D ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_DAY ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_M ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_Y ; 
 scalar_t__ CDNS_RTC_TIMR ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rtc_time*) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns_rtc*,int) ; 
 struct cdns_rtc* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_time *tm)
{
	struct cdns_rtc *crtc = FUNC5(dev);
	u32 reg;

	/* If the RTC is disabled, assume the values are invalid */
	if (!FUNC2(crtc))
		return -EINVAL;

	FUNC4(crtc, false);

	reg = FUNC6(crtc->regs + CDNS_RTC_TIMR);
	FUNC3(reg, tm);

	reg = FUNC6(crtc->regs + CDNS_RTC_CALR);
	tm->tm_mday = FUNC1(FUNC0(CDNS_RTC_CAL_D, reg));
	tm->tm_mon  = FUNC1(FUNC0(CDNS_RTC_CAL_M, reg)) - 1;
	tm->tm_year = FUNC1(FUNC0(CDNS_RTC_CAL_Y, reg))
		    + FUNC1(FUNC0(CDNS_RTC_CAL_C, reg)) * 100 - 1900;
	tm->tm_wday = FUNC1(FUNC0(CDNS_RTC_CAL_DAY, reg)) - 1;

	FUNC4(crtc, true);
	return 0;
}