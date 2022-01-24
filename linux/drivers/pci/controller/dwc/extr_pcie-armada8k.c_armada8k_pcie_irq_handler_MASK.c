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
typedef  int /*<<< orphan*/  u32 ;
struct dw_pcie {int dummy; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  PCIE_GLOBAL_INT_CAUSE1_REG ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *arg)
{
	struct armada8k_pcie *pcie = arg;
	struct dw_pcie *pci = pcie->pci;
	u32 val;

	/*
	 * Interrupts are directly handled by the device driver of the
	 * PCI device. However, they are also latched into the PCIe
	 * controller, so we simply discard them.
	 */
	val = FUNC0(pci, PCIE_GLOBAL_INT_CAUSE1_REG);
	FUNC1(pci, PCIE_GLOBAL_INT_CAUSE1_REG, val);

	return IRQ_HANDLED;
}