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
typedef  int u8 ;
typedef  int u16 ;
struct TYPE_2__ {void* tm_hour; void* tm_min; scalar_t__ tm_sec; } ;
struct rtc_wkalrm {int pending; int enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PRTCSS_RTC_ADAY0 ; 
 int /*<<< orphan*/  PRTCSS_RTC_ADAY1 ; 
 int /*<<< orphan*/  PRTCSS_RTC_AHOUR ; 
 int /*<<< orphan*/  PRTCSS_RTC_AMIN ; 
 int /*<<< orphan*/  PRTCSS_RTC_CCTRL ; 
 int PRTCSS_RTC_CCTRL_AIEN ; 
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_rtc*) ; 
 struct davinci_rtc* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (struct davinci_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_wkalrm *alm)
{
	struct davinci_rtc *davinci_rtc = FUNC3(dev);
	u16 days = 0;
	u8 day0, day1;
	unsigned long flags;

	alm->time.tm_sec = 0;

	FUNC6(&davinci_rtc_lock, flags);

	FUNC2(davinci_rtc);
	alm->time.tm_min = FUNC0(FUNC5(davinci_rtc, PRTCSS_RTC_AMIN));

	FUNC2(davinci_rtc);
	alm->time.tm_hour = FUNC0(FUNC5(davinci_rtc, PRTCSS_RTC_AHOUR));

	FUNC2(davinci_rtc);
	day0 = FUNC5(davinci_rtc, PRTCSS_RTC_ADAY0);

	FUNC2(davinci_rtc);
	day1 = FUNC5(davinci_rtc, PRTCSS_RTC_ADAY1);

	FUNC7(&davinci_rtc_lock, flags);
	days |= day1;
	days <<= 8;
	days |= day0;

	if (FUNC1(days, &alm->time) < 0)
		return -EINVAL;

	alm->pending = !!(FUNC5(davinci_rtc,
			  PRTCSS_RTC_CCTRL) &
			PRTCSS_RTC_CCTRL_AIEN);
	alm->enabled = alm->pending && FUNC4(dev);

	return 0;
}