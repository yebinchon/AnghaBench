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
struct pcie_port {int /*<<< orphan*/  lock; int /*<<< orphan*/ * irq_mask; } ;
struct irq_data {unsigned int hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MAX_MSI_IRQS_PER_CTRL ; 
 unsigned int MSI_REG_CTRL_BLOCK_SIZE ; 
 scalar_t__ PCIE_MSI_INTR0_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_port*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct pcie_port* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct irq_data *d)
{
	struct pcie_port *pp = FUNC2(d);
	unsigned int res, bit, ctrl;
	unsigned long flags;

	FUNC3(&pp->lock, flags);

	ctrl = d->hwirq / MAX_MSI_IRQS_PER_CTRL;
	res = ctrl * MSI_REG_CTRL_BLOCK_SIZE;
	bit = d->hwirq % MAX_MSI_IRQS_PER_CTRL;

	pp->irq_mask[ctrl] |= FUNC0(bit);
	FUNC1(pp, PCIE_MSI_INTR0_MASK + res, 4,
			    pp->irq_mask[ctrl]);

	FUNC4(&pp->lock, flags);
}