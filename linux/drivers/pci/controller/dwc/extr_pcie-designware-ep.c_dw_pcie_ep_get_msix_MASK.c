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
typedef  int u32 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int msix_cap; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PCI_MSIX_FLAGS ; 
 int PCI_MSIX_FLAGS_ENABLE ; 
 int PCI_MSIX_FLAGS_QSIZE ; 
 int FUNC0 (struct dw_pcie*,int) ; 
 struct dw_pcie_ep* FUNC1 (struct pci_epc*) ; 
 struct dw_pcie* FUNC2 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC3(struct pci_epc *epc, u8 func_no)
{
	struct dw_pcie_ep *ep = FUNC1(epc);
	struct dw_pcie *pci = FUNC2(ep);
	u32 val, reg;

	if (!ep->msix_cap)
		return -EINVAL;

	reg = ep->msix_cap + PCI_MSIX_FLAGS;
	val = FUNC0(pci, reg);
	if (!(val & PCI_MSIX_FLAGS_ENABLE))
		return -EINVAL;

	val &= PCI_MSIX_FLAGS_QSIZE;

	return val;
}