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
 int /*<<< orphan*/  AT91_RTC_IER ; 
 int /*<<< orphan*/  at91_rtc_lock ; 
 int /*<<< orphan*/  at91_rtc_shadow_imr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(u32 mask)
{
	unsigned long flags;

	FUNC1(&at91_rtc_lock, flags);
	at91_rtc_shadow_imr |= mask;
	FUNC0(AT91_RTC_IER, mask);
	FUNC2(&at91_rtc_lock, flags);
}