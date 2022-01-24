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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *dev_id)
{
	FUNC1("timeout WDT timeout\n");

#ifdef ONLY_TESTING
	pr_crit("Would Reboot\n");
#else
	FUNC1("Initiating system reboot\n");
	FUNC0();
#endif
	return IRQ_HANDLED;
}