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
struct gsc_asic {unsigned int* global_irq; int /*<<< orphan*/  name; scalar_t__ hpa; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ OFFSET_IRR ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (scalar_t__) ; 

irqreturn_t FUNC4(int gsc_asic_irq, void *dev)
{
	unsigned long irr;
	struct gsc_asic *gsc_asic = dev;

	irr = FUNC3(gsc_asic->hpa + OFFSET_IRR);
	if (irr == 0)
		return IRQ_NONE;

	FUNC0("%s intr, mask=0x%x\n", gsc_asic->name, irr);

	do {
		int local_irq = FUNC1(irr);
		unsigned int irq = gsc_asic->global_irq[local_irq];
		FUNC2(irq);
		irr &= ~(1 << local_irq);
	} while (irr);

	return IRQ_HANDLED;
}