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
struct sprd_wdt {int /*<<< orphan*/  wdd; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SPRD_WDT_INT_CLEAR_BIT ; 
 scalar_t__ SPRD_WDT_INT_CLR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct sprd_wdt *wdt = (struct sprd_wdt *)dev_id;

	FUNC1(wdt->base);
	FUNC3(SPRD_WDT_INT_CLEAR_BIT, wdt->base + SPRD_WDT_INT_CLR);
	FUNC0(wdt->base);
	FUNC2(&wdt->wdd);
	return IRQ_HANDLED;
}