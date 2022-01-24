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
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  PRTCSS_RTC_CTRL ; 
 int PRTCSS_RTC_CTRL_WDTFLG ; 
 int PRTCSS_RTC_CTRL_WEN ; 
#define  RTC_WIE_OFF 129 
#define  RTC_WIE_ON 128 
 int /*<<< orphan*/  davinci_rtc_lock ; 
 struct davinci_rtc* FUNC0 (struct device*) ; 
 int FUNC1 (struct davinci_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_rtc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct device *dev, unsigned int cmd, unsigned long arg)
{
	struct davinci_rtc *davinci_rtc = FUNC0(dev);
	u8 rtc_ctrl;
	unsigned long flags;
	int ret = 0;

	FUNC3(&davinci_rtc_lock, flags);

	rtc_ctrl = FUNC1(davinci_rtc, PRTCSS_RTC_CTRL);

	switch (cmd) {
	case RTC_WIE_ON:
		rtc_ctrl |= PRTCSS_RTC_CTRL_WEN | PRTCSS_RTC_CTRL_WDTFLG;
		break;
	case RTC_WIE_OFF:
		rtc_ctrl &= ~PRTCSS_RTC_CTRL_WEN;
		break;
	default:
		ret = -ENOIOCTLCMD;
	}

	FUNC2(davinci_rtc, rtc_ctrl, PRTCSS_RTC_CTRL);

	FUNC4(&davinci_rtc_lock, flags);

	return ret;
}