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
struct sama5d4_wdt {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_WDT_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct sama5d4_wdt* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct sama5d4_wdt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct sama5d4_wdt *wdt = FUNC1(dev_id);

	if (FUNC3(wdt, AT91_WDT_SR)) {
		FUNC2("Atmel Watchdog Software Reset\n");
		FUNC0();
		FUNC2("Reboot didn't succeed\n");
	}

	return IRQ_HANDLED;
}