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
struct watchdog_device {int dummy; } ;
struct sp805_wdt {scalar_t__ base; } ;

/* Variables and functions */
 int ENABLE_MASK ; 
 scalar_t__ WDTCONTROL ; 
 int FUNC0 (scalar_t__) ; 
 struct sp805_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static bool FUNC2(struct watchdog_device *wdd)
{
	struct sp805_wdt *wdt = FUNC1(wdd);
	u32 wdtcontrol = FUNC0(wdt->base + WDTCONTROL);

	return (wdtcontrol & ENABLE_MASK) == ENABLE_MASK;
}