#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned long timeout; } ;
struct pdc_wdt_dev {scalar_t__ base; TYPE_1__ wdt_dev; int /*<<< orphan*/  wdt_clk; } ;

/* Variables and functions */
 scalar_t__ PDC_WDT_CONFIG ; 
 unsigned int PDC_WDT_CONFIG_DELAY_MASK ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct pdc_wdt_dev *wdt)
{
	unsigned long clk_rate = FUNC0(wdt->wdt_clk);
	unsigned int val;

	val = FUNC2(wdt->base + PDC_WDT_CONFIG) & ~PDC_WDT_CONFIG_DELAY_MASK;
	val |= FUNC1(wdt->wdt_dev.timeout * clk_rate) - 1;
	FUNC3(val, wdt->base + PDC_WDT_CONFIG);
}