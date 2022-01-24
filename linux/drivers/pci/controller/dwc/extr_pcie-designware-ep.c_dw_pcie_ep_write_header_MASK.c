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
struct pci_epf_header {int vendorid; int deviceid; int subclass_code; int baseclass_code; int subsys_vendor_id; int subsys_id; int /*<<< orphan*/  interrupt_pin; int /*<<< orphan*/  cache_line_size; int /*<<< orphan*/  progif_code; int /*<<< orphan*/  revid; } ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CACHE_LINE_SIZE ; 
 int /*<<< orphan*/  PCI_CLASS_DEVICE ; 
 int /*<<< orphan*/  PCI_CLASS_PROG ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  PCI_INTERRUPT_PIN ; 
 int /*<<< orphan*/  PCI_REVISION_ID ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_ID ; 
 int /*<<< orphan*/  PCI_SUBSYSTEM_VENDOR_ID ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 int /*<<< orphan*/  FUNC0 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_pcie*,int /*<<< orphan*/ ,int) ; 
 struct dw_pcie_ep* FUNC4 (struct pci_epc*) ; 
 struct dw_pcie* FUNC5 (struct dw_pcie_ep*) ; 

__attribute__((used)) static int FUNC6(struct pci_epc *epc, u8 func_no,
				   struct pci_epf_header *hdr)
{
	struct dw_pcie_ep *ep = FUNC4(epc);
	struct dw_pcie *pci = FUNC5(ep);

	FUNC1(pci);
	FUNC3(pci, PCI_VENDOR_ID, hdr->vendorid);
	FUNC3(pci, PCI_DEVICE_ID, hdr->deviceid);
	FUNC2(pci, PCI_REVISION_ID, hdr->revid);
	FUNC2(pci, PCI_CLASS_PROG, hdr->progif_code);
	FUNC3(pci, PCI_CLASS_DEVICE,
			   hdr->subclass_code | hdr->baseclass_code << 8);
	FUNC2(pci, PCI_CACHE_LINE_SIZE,
			   hdr->cache_line_size);
	FUNC3(pci, PCI_SUBSYSTEM_VENDOR_ID,
			   hdr->subsys_vendor_id);
	FUNC3(pci, PCI_SUBSYSTEM_ID, hdr->subsys_id);
	FUNC2(pci, PCI_INTERRUPT_PIN,
			   hdr->interrupt_pin);
	FUNC0(pci);

	return 0;
}