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
struct sprd_wdt {scalar_t__ base; } ;

/* Variables and functions */
 int SPRD_WDT_CNT_EN_BIT ; 
 scalar_t__ SPRD_WDT_CTRL ; 
 int SPRD_WDT_INT_EN_BIT ; 
 int SPRD_WDT_RST_EN_BIT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct sprd_wdt* FUNC3 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct watchdog_device *wdd)
{
	struct sprd_wdt *wdt = FUNC3(wdd);
	u32 val;

	FUNC2(wdt->base);
	val = FUNC0(wdt->base + SPRD_WDT_CTRL);
	val &= ~(SPRD_WDT_CNT_EN_BIT | SPRD_WDT_RST_EN_BIT |
		SPRD_WDT_INT_EN_BIT);
	FUNC4(val, wdt->base + SPRD_WDT_CTRL);
	FUNC1(wdt->base);
	return 0;
}