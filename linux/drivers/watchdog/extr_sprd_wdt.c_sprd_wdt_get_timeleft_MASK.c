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
struct sprd_wdt {int dummy; } ;

/* Variables and functions */
 int SPRD_WDT_CNT_STEP ; 
 int FUNC0 (struct sprd_wdt*) ; 
 struct sprd_wdt* FUNC1 (struct watchdog_device*) ; 

__attribute__((used)) static u32 FUNC2(struct watchdog_device *wdd)
{
	struct sprd_wdt *wdt = FUNC1(wdd);
	u32 val;

	val = FUNC0(wdt);
	return val / SPRD_WDT_CNT_STEP;
}