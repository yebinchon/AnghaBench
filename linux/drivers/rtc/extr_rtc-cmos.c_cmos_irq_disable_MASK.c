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
struct cmos_rtc {int /*<<< orphan*/  dev; int /*<<< orphan*/  (* wake_off ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 unsigned char RTC_AIE ; 
 int /*<<< orphan*/  RTC_CONTROL ; 
 int /*<<< orphan*/  FUNC2 (struct cmos_rtc*,unsigned char) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct cmos_rtc *cmos, unsigned char mask)
{
	unsigned char	rtc_control;

	rtc_control = FUNC0(RTC_CONTROL);
	rtc_control &= ~mask;
	FUNC1(rtc_control, RTC_CONTROL);
	if (FUNC6())
		FUNC4(mask);

	if ((mask & RTC_AIE) && FUNC3()) {
		if (cmos->wake_off)
			cmos->wake_off(cmos->dev);
	}

	FUNC2(cmos, rtc_control);
}