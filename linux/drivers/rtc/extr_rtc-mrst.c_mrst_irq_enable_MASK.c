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
struct mrst_rtc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct mrst_rtc*,unsigned char) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mrst_rtc *mrst, unsigned char mask)
{
	unsigned char	rtc_control;

	/*
	 * Flush any pending IRQ status, notably for update irqs,
	 * before we enable new IRQs
	 */
	rtc_control = FUNC1(RTC_CONTROL);
	FUNC0(mrst, rtc_control);

	rtc_control |= mask;
	FUNC2(rtc_control, RTC_CONTROL);

	FUNC0(mrst, rtc_control);
}