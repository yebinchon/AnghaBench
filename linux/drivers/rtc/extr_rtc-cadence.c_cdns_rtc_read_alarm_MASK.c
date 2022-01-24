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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void* tm_mon; void* tm_mday; } ;
struct rtc_wkalrm {TYPE_1__ time; } ;
struct device {int dummy; } ;
struct cdns_rtc {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ CDNS_RTC_CALAR ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_D ; 
 int /*<<< orphan*/  CDNS_RTC_CAL_M ; 
 scalar_t__ CDNS_RTC_TIMAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct cdns_rtc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct cdns_rtc *crtc = FUNC3(dev);
	u32 reg;

	reg = FUNC4(crtc->regs + CDNS_RTC_TIMAR);
	FUNC2(reg, &alarm->time);

	reg = FUNC4(crtc->regs + CDNS_RTC_CALAR);
	alarm->time.tm_mday = FUNC1(FUNC0(CDNS_RTC_CAL_D, reg));
	alarm->time.tm_mon  = FUNC1(FUNC0(CDNS_RTC_CAL_M, reg)) - 1;

	return 0;
}