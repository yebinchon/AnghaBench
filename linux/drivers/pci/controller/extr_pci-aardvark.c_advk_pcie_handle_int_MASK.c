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
typedef  int u32 ;
struct advk_pcie {int /*<<< orphan*/  irq_domain; } ;

/* Variables and functions */
 int PCIE_ISR0_ALL_MASK ; 
 int /*<<< orphan*/  PCIE_ISR0_MASK_REG ; 
 int PCIE_ISR0_MSI_INT_PENDING ; 
 int /*<<< orphan*/  PCIE_ISR0_REG ; 
 int PCIE_ISR1_ALL_MASK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PCIE_ISR1_MASK_REG ; 
 int /*<<< orphan*/  PCIE_ISR1_REG ; 
 int PCI_NUM_INTX ; 
 int /*<<< orphan*/  FUNC1 (struct advk_pcie*) ; 
 int FUNC2 (struct advk_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct advk_pcie*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct advk_pcie *pcie)
{
	u32 isr0_val, isr0_mask, isr0_status;
	u32 isr1_val, isr1_mask, isr1_status;
	int i, virq;

	isr0_val = FUNC2(pcie, PCIE_ISR0_REG);
	isr0_mask = FUNC2(pcie, PCIE_ISR0_MASK_REG);
	isr0_status = isr0_val & ((~isr0_mask) & PCIE_ISR0_ALL_MASK);

	isr1_val = FUNC2(pcie, PCIE_ISR1_REG);
	isr1_mask = FUNC2(pcie, PCIE_ISR1_MASK_REG);
	isr1_status = isr1_val & ((~isr1_mask) & PCIE_ISR1_ALL_MASK);

	if (!isr0_status && !isr1_status) {
		FUNC3(pcie, isr0_val, PCIE_ISR0_REG);
		FUNC3(pcie, isr1_val, PCIE_ISR1_REG);
		return;
	}

	/* Process MSI interrupts */
	if (isr0_status & PCIE_ISR0_MSI_INT_PENDING)
		FUNC1(pcie);

	/* Process legacy interrupts */
	for (i = 0; i < PCI_NUM_INTX; i++) {
		if (!(isr1_status & FUNC0(i)))
			continue;

		FUNC3(pcie, FUNC0(i),
			    PCIE_ISR1_REG);

		virq = FUNC5(pcie->irq_domain, i);
		FUNC4(virq);
	}
}