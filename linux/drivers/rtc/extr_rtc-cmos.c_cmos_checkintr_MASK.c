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
struct cmos_rtc {int /*<<< orphan*/  rtc; } ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_INTR_FLAGS ; 
 unsigned char RTC_IRQF ; 
 unsigned char RTC_IRQMASK ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,unsigned char) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct cmos_rtc *cmos, unsigned char rtc_control)
{
	unsigned char	rtc_intr;

	/* NOTE after changing RTC_xIE bits we always read INTR_FLAGS;
	 * allegedly some older rtcs need that to handle irqs properly
	 */
	rtc_intr = FUNC0(RTC_INTR_FLAGS);

	if (FUNC3())
		return;

	rtc_intr &= (rtc_control & RTC_IRQMASK) | RTC_IRQF;
	if (FUNC1(rtc_intr))
		FUNC2(cmos->rtc, 1, rtc_intr);
}