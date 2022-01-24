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
struct pci_epf_header {int deviceid; int subclass_code; int baseclass_code; int subsys_id; int /*<<< orphan*/  subsys_vendor_id; int /*<<< orphan*/  vendorid; int /*<<< orphan*/  interrupt_pin; int /*<<< orphan*/  cache_line_size; int /*<<< orphan*/  progif_code; int /*<<< orphan*/  revid; } ;
struct pci_epc {int dummy; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {struct cdns_pcie pcie; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDNS_PCIE_LM_ID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_CLASS_DEVICE ; 
 int /*<<< orphan*/  PCI_CLASS_PROG ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  PCI_INTERRUPT_PIN ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_ID ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cdns_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns_pcie*,int /*<<< orphan*/ ,int) ; 
 struct cdns_pcie_ep* FUNC5 (struct pci_epc*) ; 

__attribute__((used)) static int FUNC6(struct pci_epc *epc, u8 fn,
				     struct pci_epf_header *hdr)
{
	struct cdns_pcie_ep *ep = FUNC5(epc);
	struct cdns_pcie *pcie = &ep->pcie;

	FUNC3(pcie, fn, PCI_DEVICE_ID, hdr->deviceid);
	FUNC2(pcie, fn, PCI_REVISION_ID, hdr->revid);
	FUNC2(pcie, fn, PCI_CLASS_PROG, hdr->progif_code);
	FUNC3(pcie, fn, PCI_CLASS_DEVICE,
			       hdr->subclass_code | hdr->baseclass_code << 8);
	FUNC2(pcie, fn, PCI_CACHE_LINE_SIZE,
			       hdr->cache_line_size);
	FUNC3(pcie, fn, PCI_SUBSYSTEM_ID, hdr->subsys_id);
	FUNC2(pcie, fn, PCI_INTERRUPT_PIN, hdr->interrupt_pin);

	/*
	 * Vendor ID can only be modified from function 0, all other functions
	 * use the same vendor ID as function 0.
	 */
	if (fn == 0) {
		/* Update the vendor IDs. */
		u32 id = FUNC1(hdr->vendorid) |
			 FUNC0(hdr->subsys_vendor_id);

		FUNC4(pcie, CDNS_PCIE_LM_ID, id);
	}

	return 0;
}