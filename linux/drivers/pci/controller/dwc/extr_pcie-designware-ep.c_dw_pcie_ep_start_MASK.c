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
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* start_link ) (struct dw_pcie*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 struct dw_pcie_ep* FUNC0 (struct pci_epc*) ; 
 int FUNC1 (struct dw_pcie*) ; 
 struct dw_pcie* FUNC2 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC3(struct pci_epc *epc)
{
	struct dw_pcie_ep *ep = FUNC0(epc);
	struct dw_pcie *pci = FUNC2(ep);

	if (!pci->ops->start_link)
		return -EINVAL;

	return pci->ops->start_link(pci);
}