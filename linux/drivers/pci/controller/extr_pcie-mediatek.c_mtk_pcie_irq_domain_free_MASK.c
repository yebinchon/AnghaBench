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
struct mtk_pcie_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  msi_irq_in_use; TYPE_1__* pcie; } ;
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mtk_pcie_port* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,unsigned int) ; 
 struct irq_data* FUNC4 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct irq_domain *domain,
				     unsigned int virq, unsigned int nr_irqs)
{
	struct irq_data *d = FUNC4(domain, virq);
	struct mtk_pcie_port *port = FUNC2(d);

	FUNC5(&port->lock);

	if (!FUNC7(d->hwirq, port->msi_irq_in_use))
		FUNC1(port->pcie->dev, "trying to free unused MSI#%lu\n",
			d->hwirq);
	else
		FUNC0(d->hwirq, port->msi_irq_in_use);

	FUNC6(&port->lock);

	FUNC3(domain, virq, nr_irqs);
}