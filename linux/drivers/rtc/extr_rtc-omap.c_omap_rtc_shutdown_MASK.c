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
typedef  int /*<<< orphan*/  u8 ;
struct platform_device {int dummy; } ;
struct omap_rtc {TYPE_1__* type; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* lock ) (struct omap_rtc*) ;int /*<<< orphan*/  (* unlock ) (struct omap_rtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_IT_ALARM ; 
 int /*<<< orphan*/  OMAP_RTC_INTERRUPTS_REG ; 
 struct omap_rtc* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_rtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_rtc*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_rtc*) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	struct omap_rtc *rtc = FUNC0(pdev);
	u8 mask;

	/*
	 * Keep the ALARM interrupt enabled to allow the system to power up on
	 * alarm events.
	 */
	rtc->type->unlock(rtc);
	mask = FUNC1(rtc, OMAP_RTC_INTERRUPTS_REG);
	mask &= OMAP_RTC_INTERRUPTS_IT_ALARM;
	FUNC2(rtc, OMAP_RTC_INTERRUPTS_REG, mask);
	rtc->type->lock(rtc);
}