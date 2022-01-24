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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_RTC_IDR ; 
 int /*<<< orphan*/  AT91_RTC_SR ; 
 int /*<<< orphan*/  at91_rtc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  at91_rtc_shadow_imr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(u32 mask)
{
	unsigned long flags;

	FUNC2(&at91_rtc_lock, flags);
	FUNC1(AT91_RTC_IDR, mask);
	/*
	 * Register read back (of any RTC-register) needed to make sure
	 * IDR-register write has reached the peripheral before updating
	 * shadow mask.
	 *
	 * Note that there is still a possibility that the mask is updated
	 * before interrupts have actually been disabled in hardware. The only
	 * way to be certain would be to poll the IMR-register, which is is
	 * the very register we are trying to emulate. The register read back
	 * is a reasonable heuristic.
	 */
	FUNC0(AT91_RTC_SR);
	at91_rtc_shadow_imr &= ~mask;
	FUNC3(&at91_rtc_lock, flags);
}