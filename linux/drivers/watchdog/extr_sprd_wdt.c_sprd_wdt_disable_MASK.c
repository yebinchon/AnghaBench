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
struct sprd_wdt {int /*<<< orphan*/  enable; int /*<<< orphan*/  rtc_enable; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPRD_WDT_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(void *_data)
{
	struct sprd_wdt *wdt = _data;

	FUNC2(wdt->base);
	FUNC3(0x0, wdt->base + SPRD_WDT_CTRL);
	FUNC1(wdt->base);

	FUNC0(wdt->rtc_enable);
	FUNC0(wdt->enable);
}