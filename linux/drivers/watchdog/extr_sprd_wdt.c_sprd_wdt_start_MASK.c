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
struct watchdog_device {int /*<<< orphan*/  status; int /*<<< orphan*/  pretimeout; int /*<<< orphan*/  timeout; } ;
struct sprd_wdt {scalar_t__ base; } ;

/* Variables and functions */
 int SPRD_WDT_CNT_EN_BIT ; 
 scalar_t__ SPRD_WDT_CTRL ; 
 int SPRD_WDT_INT_EN_BIT ; 
 int SPRD_WDT_RST_EN_BIT ; 
 int /*<<< orphan*/  WDOG_HW_RUNNING ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sprd_wdt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct sprd_wdt* FUNC5 (struct watchdog_device*) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct watchdog_device *wdd)
{
	struct sprd_wdt *wdt = FUNC5(wdd);
	u32 val;
	int ret;

	ret = FUNC2(wdt, wdd->timeout, wdd->pretimeout);
	if (ret)
		return ret;

	FUNC4(wdt->base);
	val = FUNC0(wdt->base + SPRD_WDT_CTRL);
	val |= SPRD_WDT_CNT_EN_BIT | SPRD_WDT_INT_EN_BIT | SPRD_WDT_RST_EN_BIT;
	FUNC6(val, wdt->base + SPRD_WDT_CTRL);
	FUNC3(wdt->base);
	FUNC1(WDOG_HW_RUNNING, &wdd->status);

	return 0;
}