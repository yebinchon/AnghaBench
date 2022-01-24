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
 int /*<<< orphan*/  FUNC0 (struct watchdog_device*) ; 
 int FUNC1 (scalar_t__) ; 
 struct atlas7_wdog* FUNC2 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct watchdog_device *wdd)
{
	struct atlas7_wdog *wdt = FUNC2(wdd);

	FUNC0(wdd);

	FUNC3(FUNC1(wdt->base + ATLAS7_WDT_CNT_CTRL) | ATLAS7_WDT_CNT_EN,
	      wdt->base + ATLAS7_WDT_CNT_CTRL);
	FUNC3(1, wdt->base + ATLAS7_WDT_EN);

	return 0;
}