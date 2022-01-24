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
typedef  int /*<<< orphan*/  u64 ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct dw_pcie_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 struct dw_pcie_ep* FUNC2 (struct pci_epc*) ; 
 struct dw_pcie* FUNC3 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC4(struct pci_epc *epc, u8 func_no,
			       phys_addr_t addr,
			       u64 pci_addr, size_t size)
{
	int ret;
	struct dw_pcie_ep *ep = FUNC2(epc);
	struct dw_pcie *pci = FUNC3(ep);

	ret = FUNC1(ep, addr, pci_addr, size);
	if (ret) {
		FUNC0(pci->dev, "Failed to enable address\n");
		return ret;
	}

	return 0;
}