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
struct sirfsoc_rtc_drv {int /*<<< orphan*/  lock; } ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_ALARM0 ; 
 unsigned long RTC_SHIFT ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 unsigned long SIRFSOC_RTC_AL0 ; 
 unsigned long SIRFSOC_RTC_AL0E ; 
 struct sirfsoc_rtc_drv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long*) ; 
 unsigned long FUNC3 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
		struct rtc_wkalrm *alrm)
{
	unsigned long rtc_status_reg, rtc_alarm;
	struct sirfsoc_rtc_drv *rtcdrv;
	rtcdrv = FUNC0(dev);

	if (alrm->enabled) {
		FUNC2(&(alrm->time), &rtc_alarm);

		FUNC5(&rtcdrv->lock);

		rtc_status_reg = FUNC3(rtcdrv, RTC_STATUS);
		if (rtc_status_reg & SIRFSOC_RTC_AL0E) {
			/*
			 * An ongoing alarm in progress - ingore it and not
			 * to return EBUSY
			 */
			FUNC1(dev, "An old alarm was set, will be replaced by a new one\n");
		}

		FUNC4(rtcdrv, RTC_ALARM0, rtc_alarm << RTC_SHIFT);
		rtc_status_reg &= ~0x07; /* mask out the lower status bits */
		/*
		 * This bit RTC_AL sets it as a wake-up source for Sleep Mode
		 * Writing 1 into this bit will clear it
		 */
		rtc_status_reg |= SIRFSOC_RTC_AL0;
		/* enable the RTC alarm interrupt */
		rtc_status_reg |= SIRFSOC_RTC_AL0E;
		FUNC4(rtcdrv, RTC_STATUS, rtc_status_reg);

		FUNC6(&rtcdrv->lock);
	} else {
		/*
		 * if this function was called with enabled=0
		 * then it could mean that the application is
		 * trying to cancel an ongoing alarm
		 */
		FUNC5(&rtcdrv->lock);

		rtc_status_reg = FUNC3(rtcdrv, RTC_STATUS);
		if (rtc_status_reg & SIRFSOC_RTC_AL0E) {
			/* clear the RTC status register's alarm bit */
			rtc_status_reg &= ~0x07;
			/* write 1 into SIRFSOC_RTC_AL0 to force a clear */
			rtc_status_reg |= (SIRFSOC_RTC_AL0);
			/* Clear the Alarm enable bit */
			rtc_status_reg &= ~(SIRFSOC_RTC_AL0E);

			FUNC4(rtcdrv, RTC_STATUS,
					   rtc_status_reg);
		}

		FUNC6(&rtcdrv->lock);
	}

	return 0;
}