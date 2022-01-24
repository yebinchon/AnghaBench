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
typedef  scalar_t__ u32 ;
struct keystone_pcie {scalar_t__* legacy_host_irqs; struct dw_pcie* pci; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 struct irq_chip* FUNC3 (struct irq_desc*) ; 
 struct keystone_pcie* FUNC4 (struct irq_desc*) ; 
 unsigned int FUNC5 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct keystone_pcie*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct irq_desc *desc)
{
	unsigned int irq = FUNC5(desc);
	struct keystone_pcie *ks_pcie = FUNC4(desc);
	struct dw_pcie *pci = ks_pcie->pci;
	struct device *dev = pci->dev;
	u32 irq_offset = irq - ks_pcie->legacy_host_irqs[0];
	struct irq_chip *chip = FUNC3(desc);

	FUNC2(dev, ": Handling legacy irq %d\n", irq);

	/*
	 * The chained irq handler installation would have replaced normal
	 * interrupt driver handler so we need to take care of mask/unmask and
	 * ack operation.
	 */
	FUNC0(chip, desc);
	FUNC6(ks_pcie, irq_offset);
	FUNC1(chip, desc);
}