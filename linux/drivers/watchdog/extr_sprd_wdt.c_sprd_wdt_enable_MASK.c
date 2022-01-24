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
struct sprd_wdt {scalar_t__ base; int /*<<< orphan*/  enable; int /*<<< orphan*/  rtc_enable; } ;

/* Variables and functions */
 scalar_t__ SPRD_WDT_CTRL ; 
 int /*<<< orphan*/  SPRD_WDT_NEW_VER_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct sprd_wdt *wdt)
{
	u32 val;
	int ret;

	ret = FUNC1(wdt->enable);
	if (ret)
		return ret;
	ret = FUNC1(wdt->rtc_enable);
	if (ret) {
		FUNC0(wdt->enable);
		return ret;
	}

	FUNC4(wdt->base);
	val = FUNC2(wdt->base + SPRD_WDT_CTRL);
	val |= SPRD_WDT_NEW_VER_EN;
	FUNC5(val, wdt->base + SPRD_WDT_CTRL);
	FUNC3(wdt->base);
	return 0;
}