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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;
struct dra7xx_pcie {int dummy; } ;
typedef  enum pci_epc_irq_type { ____Placeholder_pci_epc_irq_type } pci_epc_irq_type ;

/* Variables and functions */
#define  PCI_EPC_IRQ_LEGACY 129 
#define  PCI_EPC_IRQ_MSI 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dra7xx_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct dra7xx_pcie*,int /*<<< orphan*/ ) ; 
 struct dra7xx_pcie* FUNC3 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC4 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC5(struct dw_pcie_ep *ep, u8 func_no,
				 enum pci_epc_irq_type type, u16 interrupt_num)
{
	struct dw_pcie *pci = FUNC4(ep);
	struct dra7xx_pcie *dra7xx = FUNC3(pci);

	switch (type) {
	case PCI_EPC_IRQ_LEGACY:
		FUNC1(dra7xx);
		break;
	case PCI_EPC_IRQ_MSI:
		FUNC2(dra7xx, interrupt_num);
		break;
	default:
		FUNC0(pci->dev, "UNKNOWN IRQ type\n");
	}

	return 0;
}