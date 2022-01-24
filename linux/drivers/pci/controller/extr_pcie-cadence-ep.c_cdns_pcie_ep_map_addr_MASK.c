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
typedef  int u32 ;
struct pci_epc {int /*<<< orphan*/  dev; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {int max_regions; int /*<<< orphan*/ * ob_addr; int /*<<< orphan*/  ob_region_map; struct cdns_pcie pcie; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int BITS_PER_LONG ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cdns_pcie*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct cdns_pcie_ep* FUNC2 (struct pci_epc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct pci_epc *epc, u8 fn, phys_addr_t addr,
				 u64 pci_addr, size_t size)
{
	struct cdns_pcie_ep *ep = FUNC2(epc);
	struct cdns_pcie *pcie = &ep->pcie;
	u32 r;

	r = FUNC3(&ep->ob_region_map,
				sizeof(ep->ob_region_map) * BITS_PER_LONG);
	if (r >= ep->max_regions - 1) {
		FUNC1(&epc->dev, "no free outbound region\n");
		return -EINVAL;
	}

	FUNC0(pcie, fn, r, false, addr, pci_addr, size);

	FUNC4(r, &ep->ob_region_map);
	ep->ob_addr[r] = addr;

	return 0;
}