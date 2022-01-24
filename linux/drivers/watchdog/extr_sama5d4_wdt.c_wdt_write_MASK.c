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
typedef  scalar_t__ u32 ;
struct sama5d4_wdt {scalar_t__ last_ping; scalar_t__ reg_base; } ;

/* Variables and functions */
 scalar_t__ WDT_DELAY ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sama5d4_wdt *wdt, u32 field, u32 val)
{
	/*
	 * WDT_CR and WDT_MR must not be modified within three slow clock
	 * periods following a restart of the watchdog performed by a write
	 * access in WDT_CR.
	 */
	while (FUNC0(jiffies, wdt->last_ping + WDT_DELAY))
		FUNC1(30, 125);
	FUNC2(val, wdt->reg_base + field);
	wdt->last_ping = jiffies;
}