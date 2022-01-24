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
struct watchdog_device {int dummy; } ;
struct atlas7_wdog {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ ATLAS7_WDT_CNT_CTRL ; 
 int ATLAS7_WDT_CNT_EN ; 
 scalar_t__ ATLAS7_WDT_EN ; 
 int FUNC0 (scalar_t__) ; 
 struct atlas7_wdog* FUNC1 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct watchdog_device *wdd)
{
	struct atlas7_wdog *wdt = FUNC1(wdd);

	FUNC2(0, wdt->base + ATLAS7_WDT_EN);
	FUNC2(FUNC0(wdt->base + ATLAS7_WDT_CNT_CTRL) & ~ATLAS7_WDT_CNT_EN,
	      wdt->base + ATLAS7_WDT_CNT_CTRL);

	return 0;
}