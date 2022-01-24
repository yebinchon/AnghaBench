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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rockchip_pcie {int dummy; } ;
struct rockchip_pcie_ep {struct rockchip_pcie rockchip; } ;
struct pci_epf_header {int vendorid; int subsys_vendor_id; int deviceid; int revid; int progif_code; int subclass_code; int baseclass_code; int cache_line_size; int subsys_id; int interrupt_pin; } ;
struct pci_epc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ PCIE_CORE_CONFIG_VENDOR ; 
 scalar_t__ PCI_CACHE_LINE_SIZE ; 
 scalar_t__ PCI_INTERRUPT_LINE ; 
 scalar_t__ PCI_REVISION_ID ; 
 scalar_t__ PCI_SUBSYSTEM_VENDOR_ID ; 
 scalar_t__ PCI_VENDOR_ID ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct rockchip_pcie_ep* FUNC2 (struct pci_epc*) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_pcie*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct pci_epc *epc, u8 fn,
					 struct pci_epf_header *hdr)
{
	struct rockchip_pcie_ep *ep = FUNC2(epc);
	struct rockchip_pcie *rockchip = &ep->rockchip;

	/* All functions share the same vendor ID with function 0 */
	if (fn == 0) {
		u32 vid_regs = (hdr->vendorid & FUNC0(15, 0)) |
			       (hdr->subsys_vendor_id & FUNC0(31, 16)) << 16;

		FUNC3(rockchip, vid_regs,
				    PCIE_CORE_CONFIG_VENDOR);
	}

	FUNC3(rockchip, hdr->deviceid << 16,
			    FUNC1(fn) + PCI_VENDOR_ID);

	FUNC3(rockchip,
			    hdr->revid |
			    hdr->progif_code << 8 |
			    hdr->subclass_code << 16 |
			    hdr->baseclass_code << 24,
			    FUNC1(fn) + PCI_REVISION_ID);
	FUNC3(rockchip, hdr->cache_line_size,
			    FUNC1(fn) +
			    PCI_CACHE_LINE_SIZE);
	FUNC3(rockchip, hdr->subsys_id << 16,
			    FUNC1(fn) +
			    PCI_SUBSYSTEM_VENDOR_ID);
	FUNC3(rockchip, hdr->interrupt_pin << 8,
			    FUNC1(fn) +
			    PCI_INTERRUPT_LINE);

	return 0;
}