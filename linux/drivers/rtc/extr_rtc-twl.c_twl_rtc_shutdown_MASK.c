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
struct twl_rtc {int dummy; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_RTC_INTERRUPTS_REG_IT_TIMER_M ; 
 int /*<<< orphan*/  FUNC0 (struct twl_rtc*,int /*<<< orphan*/ ) ; 
 struct twl_rtc* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct twl_rtc *twl_rtc = FUNC1(pdev);

	/* mask timer interrupts, but leave alarm interrupts on to enable
	   power-on when alarm is triggered */
	FUNC0(twl_rtc, BIT_RTC_INTERRUPTS_REG_IT_TIMER_M);
}