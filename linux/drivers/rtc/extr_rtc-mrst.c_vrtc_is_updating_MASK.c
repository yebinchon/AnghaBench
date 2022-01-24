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

/* Variables and functions */
 int /*<<< orphan*/  RTC_FREQ_SELECT ; 
 unsigned char RTC_UIP ; 
 int /*<<< orphan*/  rtc_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned char FUNC3(void)
{
	unsigned char uip;
	unsigned long flags;

	FUNC0(&rtc_lock, flags);
	uip = (FUNC2(RTC_FREQ_SELECT) & RTC_UIP);
	FUNC1(&rtc_lock, flags);
	return uip;
}