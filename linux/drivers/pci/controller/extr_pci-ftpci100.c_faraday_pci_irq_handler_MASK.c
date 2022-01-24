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
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct faraday_pci {int /*<<< orphan*/  irqdomain; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FARADAY_PCI_CTRL2 ; 
 unsigned int PCI_CTRL2_INTSTS_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct faraday_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct irq_chip* FUNC5 (struct irq_desc*) ; 
 struct faraday_pci* FUNC6 (struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct irq_desc *desc)
{
	struct faraday_pci *p = FUNC6(desc);
	struct irq_chip *irqchip = FUNC5(desc);
	unsigned int irq_stat, reg, i;

	FUNC3(p, 0, 0, FARADAY_PCI_CTRL2, 4, &reg);
	irq_stat = reg >> PCI_CTRL2_INTSTS_SHIFT;

	FUNC1(irqchip, desc);

	for (i = 0; i < 4; i++) {
		if ((irq_stat & FUNC0(i)) == 0)
			continue;
		FUNC4(FUNC7(p->irqdomain, i));
	}

	FUNC2(irqchip, desc);
}