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
struct da9052_battery {int /*<<< orphan*/  psy; int /*<<< orphan*/  status; TYPE_1__* da9052; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq_data; } ;

/* Variables and functions */
 int DA9052_IRQ_CHGEND ; 
 int DA9052_IRQ_DCIN ; 
 int DA9052_IRQ_TBAT ; 
 int DA9052_IRQ_VBUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  POWER_SUPPLY_STATUS_FULL ; 
 int /*<<< orphan*/  FUNC0 (struct da9052_battery*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *data)
{
	struct da9052_battery *bat = data;
	int virq;

	virq = FUNC2(bat->da9052->irq_data, irq);
	irq -= virq;

	if (irq == DA9052_IRQ_CHGEND)
		bat->status = POWER_SUPPLY_STATUS_FULL;
	else
		FUNC0(bat, NULL);

	if (irq == DA9052_IRQ_CHGEND || irq == DA9052_IRQ_DCIN ||
	    irq == DA9052_IRQ_VBUS || irq == DA9052_IRQ_TBAT) {
		FUNC1(bat->psy);
	}

	return IRQ_HANDLED;
}