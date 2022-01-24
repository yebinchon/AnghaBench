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
typedef  int u32 ;
struct ssb_extif {int dummy; } ;
struct bcm47xx_wdt {int dummy; } ;

/* Variables and functions */
 int SSB_EXTIF_WATCHDOG_CLK ; 
 struct ssb_extif* FUNC0 (struct bcm47xx_wdt*) ; 
 int FUNC1 (struct ssb_extif*,int) ; 

u32 FUNC2(struct bcm47xx_wdt *wdt, u32 ms)
{
	struct ssb_extif *extif = FUNC0(wdt);
	u32 ticks = (SSB_EXTIF_WATCHDOG_CLK / 1000) * ms;

	ticks = FUNC1(extif, ticks);

	return (ticks * 1000) / SSB_EXTIF_WATCHDOG_CLK;
}