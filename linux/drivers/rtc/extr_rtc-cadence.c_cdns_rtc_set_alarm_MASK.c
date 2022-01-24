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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ tm_mon; scalar_t__ tm_mday; } ;
struct rtc_wkalrm {int /*<<< orphan*/  enabled; TYPE_1__ time; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CDNS_RTC_CALAR ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_D ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_M ; 
 int CDNS_RTC_MAX_REGS_TRIES ; 
 scalar_t__ CDNS_RTC_STSR ; 
 int CDNS_RTC_STSR_VTA_VCA ; 
 scalar_t__ CDNS_RTC_TIMAR ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct cdns_rtc* FUNC4 (struct device*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct cdns_rtc *crtc = FUNC4(dev);
	int ret = -EIO;
	int tries;
	u32 timar, calar, stsr;

	FUNC2(dev, 0);

	timar = FUNC3(&alarm->time);
	calar = FUNC0(CDNS_RTC_CAL_D, FUNC1(alarm->time.tm_mday))
	      | FUNC0(CDNS_RTC_CAL_M, FUNC1(alarm->time.tm_mon + 1));

	/* Update registers, check valid alarm flags */
	for (tries = 0; tries < CDNS_RTC_MAX_REGS_TRIES; tries++) {
		FUNC6(timar, crtc->regs + CDNS_RTC_TIMAR);
		FUNC6(calar, crtc->regs + CDNS_RTC_CALAR);
		stsr = FUNC5(crtc->regs + CDNS_RTC_STSR);

		if ((stsr & CDNS_RTC_STSR_VTA_VCA) == CDNS_RTC_STSR_VTA_VCA) {
			ret = 0;
			break;
		}
	}

	if (!ret)
		FUNC2(dev, alarm->enabled);
	return ret;
}