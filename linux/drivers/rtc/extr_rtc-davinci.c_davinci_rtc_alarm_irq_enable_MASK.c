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
struct device {int dummy; } ;
struct davinci_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRTCSS_RTC_CCTRL ; 
 int PRTCSS_RTC_CCTRL_AIEN ; 
 int PRTCSS_RTC_CCTRL_ALMFLG ; 
 int PRTCSS_RTC_CCTRL_DAEN ; 
 int PRTCSS_RTC_CCTRL_HAEN ; 
 int PRTCSS_RTC_CCTRL_MAEN ; 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_rtc*) ; 
 struct davinci_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (struct davinci_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_rtc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
					unsigned int enabled)
{
	struct davinci_rtc *davinci_rtc = FUNC1(dev);
	unsigned long flags;
	u8 rtc_cctrl = FUNC2(davinci_rtc, PRTCSS_RTC_CCTRL);

	FUNC4(&davinci_rtc_lock, flags);

	if (enabled)
		rtc_cctrl |= PRTCSS_RTC_CCTRL_DAEN |
			     PRTCSS_RTC_CCTRL_HAEN |
			     PRTCSS_RTC_CCTRL_MAEN |
			     PRTCSS_RTC_CCTRL_ALMFLG |
			     PRTCSS_RTC_CCTRL_AIEN;
	else
		rtc_cctrl &= ~PRTCSS_RTC_CCTRL_AIEN;

	FUNC0(davinci_rtc);
	FUNC3(davinci_rtc, rtc_cctrl, PRTCSS_RTC_CCTRL);

	FUNC5(&davinci_rtc_lock, flags);

	return 0;
}