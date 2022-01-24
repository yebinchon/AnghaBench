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
struct gsc_irq {int irq; int /*<<< orphan*/  txn_data; int /*<<< orphan*/  txn_addr; } ;

/* Variables and functions */
 scalar_t__ CPU_IRQ_BASE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4(struct gsc_irq *i, int irq)
{
	int c = irq;

	irq += CPU_IRQ_BASE; /* virtualize the IRQ first */

	irq = FUNC3(irq);
	if (irq < 0) {
		FUNC0("cannot claim irq %d\n", c);
		return irq;
	}

	i->txn_addr = FUNC1(irq);
	i->txn_data = FUNC2(irq);
	i->irq = irq;

	return irq;
}