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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {scalar_t__ msix_cap; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI_MSIX_FLAGS ; 
 scalar_t__ PCI_MSIX_FLAGS_QSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 scalar_t__ FUNC2 (struct dw_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*,scalar_t__,scalar_t__) ; 
 struct dw_pcie_ep* FUNC4 (struct pci_epc*) ; 
 struct dw_pcie* FUNC5 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC6(struct pci_epc *epc, u8 func_no, u16 interrupts)
{
	struct dw_pcie_ep *ep = FUNC4(epc);
	struct dw_pcie *pci = FUNC5(ep);
	u32 val, reg;

	if (!ep->msix_cap)
		return -EINVAL;

	reg = ep->msix_cap + PCI_MSIX_FLAGS;
	val = FUNC2(pci, reg);
	val &= ~PCI_MSIX_FLAGS_QSIZE;
	val |= interrupts;
	FUNC1(pci);
	FUNC3(pci, reg, val);
	FUNC0(pci);

	return 0;
}