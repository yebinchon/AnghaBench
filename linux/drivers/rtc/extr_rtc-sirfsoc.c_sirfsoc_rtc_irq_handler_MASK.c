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
struct sirfsoc_rtc_drv {int /*<<< orphan*/  rtc; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long RTC_AF ; 
 unsigned long RTC_IRQF ; 
 int /*<<< orphan*/  RTC_STATUS ; 
 unsigned long SIRFSOC_RTC_AL0 ; 
 unsigned long SIRFSOC_RTC_AL0E ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned long) ; 
 unsigned long FUNC1 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_rtc_drv*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *pdata)
{
	struct sirfsoc_rtc_drv *rtcdrv = pdata;
	unsigned long rtc_status_reg = 0x0;
	unsigned long events = 0x0;

	FUNC3(&rtcdrv->lock);

	rtc_status_reg = FUNC1(rtcdrv, RTC_STATUS);
	/* this bit will be set ONLY if an alarm was active
	 * and it expired NOW
	 * So this is being used as an ASSERT
	 */
	if (rtc_status_reg & SIRFSOC_RTC_AL0) {
		/*
		 * clear the RTC status register's alarm bit
		 * mask out the lower status bits
		 */
		rtc_status_reg &= ~0x07;
		/* write 1 into SIRFSOC_RTC_AL0 to ACK the alarm interrupt */
		rtc_status_reg |= (SIRFSOC_RTC_AL0);
		/* Clear the Alarm enable bit */
		rtc_status_reg &= ~(SIRFSOC_RTC_AL0E);
	}

	FUNC2(rtcdrv, RTC_STATUS, rtc_status_reg);

	FUNC4(&rtcdrv->lock);

	/* this should wake up any apps polling/waiting on the read
	 * after setting the alarm
	 */
	events |= RTC_IRQF | RTC_AF;
	FUNC0(rtcdrv->rtc, 1, events);

	return IRQ_HANDLED;
}