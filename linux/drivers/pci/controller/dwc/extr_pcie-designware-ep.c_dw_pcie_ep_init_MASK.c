#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  unsigned int u32 ;
struct pci_epc {int max_functions; TYPE_2__* mem; } ;
struct dw_pcie_ep {void* msix_cap; void* msi_cap; int /*<<< orphan*/  msi_mem; int /*<<< orphan*/  msi_mem_phys; int /*<<< orphan*/  page_size; int /*<<< orphan*/  addr_size; int /*<<< orphan*/  phys_base; TYPE_1__* ops; struct pci_epc* epc; void* outbound_addr; int /*<<< orphan*/  num_ob_windows; void* ob_window_map; void* ib_window_map; int /*<<< orphan*/  num_ib_windows; } ;
struct dw_pcie {struct device* dev; int /*<<< orphan*/  dbi_base2; int /*<<< orphan*/  dbi_base; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  page_size; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* ep_init ) (struct dw_pcie_ep*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct pci_epc*) ; 
 int /*<<< orphan*/  MAX_IATU_IN ; 
 int /*<<< orphan*/  MAX_IATU_OUT ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_REBAR ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE ; 
 scalar_t__ PCI_HEADER_TYPE_NORMAL ; 
 scalar_t__ PCI_REBAR_CAP ; 
 scalar_t__ PCI_REBAR_CTRL ; 
 unsigned int PCI_REBAR_CTRL_NBAR_MASK ; 
 unsigned int PCI_REBAR_CTRL_NBAR_SHIFT ; 
 int FUNC2 (struct pci_epc*) ; 
 int FUNC3 (struct pci_epc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 void* FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct pci_epc* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_pcie*) ; 
 unsigned int FUNC9 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct dw_pcie*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 (struct dw_pcie*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct dw_pcie*) ; 
 int /*<<< orphan*/  FUNC14 (struct dw_pcie*,scalar_t__,int) ; 
 int /*<<< orphan*/  epc_ops ; 
 int /*<<< orphan*/  FUNC15 (struct pci_epc*,struct dw_pcie_ep*) ; 
 int FUNC16 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_epc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct dw_pcie_ep*) ; 
 struct dw_pcie* FUNC20 (struct dw_pcie_ep*) ; 

int FUNC21(struct dw_pcie_ep *ep)
{
	int i;
	int ret;
	u32 reg;
	void *addr;
	u8 hdr_type;
	unsigned int nbars;
	unsigned int offset;
	struct pci_epc *epc;
	struct dw_pcie *pci = FUNC20(ep);
	struct device *dev = pci->dev;
	struct device_node *np = dev->of_node;

	if (!pci->dbi_base || !pci->dbi_base2) {
		FUNC4(dev, "dbi_base/dbi_base2 is not populated\n");
		return -EINVAL;
	}

	ret = FUNC16(np, "num-ib-windows", &ep->num_ib_windows);
	if (ret < 0) {
		FUNC4(dev, "Unable to read *num-ib-windows* property\n");
		return ret;
	}
	if (ep->num_ib_windows > MAX_IATU_IN) {
		FUNC4(dev, "Invalid *num-ib-windows*\n");
		return -EINVAL;
	}

	ret = FUNC16(np, "num-ob-windows", &ep->num_ob_windows);
	if (ret < 0) {
		FUNC4(dev, "Unable to read *num-ob-windows* property\n");
		return ret;
	}
	if (ep->num_ob_windows > MAX_IATU_OUT) {
		FUNC4(dev, "Invalid *num-ob-windows*\n");
		return -EINVAL;
	}

	ep->ib_window_map = FUNC5(dev,
					 FUNC0(ep->num_ib_windows),
					 sizeof(long),
					 GFP_KERNEL);
	if (!ep->ib_window_map)
		return -ENOMEM;

	ep->ob_window_map = FUNC5(dev,
					 FUNC0(ep->num_ob_windows),
					 sizeof(long),
					 GFP_KERNEL);
	if (!ep->ob_window_map)
		return -ENOMEM;

	addr = FUNC5(dev, ep->num_ob_windows, sizeof(phys_addr_t),
			    GFP_KERNEL);
	if (!addr)
		return -ENOMEM;
	ep->outbound_addr = addr;

	epc = FUNC6(dev, &epc_ops);
	if (FUNC1(epc)) {
		FUNC4(dev, "Failed to create epc device\n");
		return FUNC2(epc);
	}

	ep->epc = epc;
	FUNC15(epc, ep);

	if (ep->ops->ep_init)
		ep->ops->ep_init(ep);

	hdr_type = FUNC11(pci, PCI_HEADER_TYPE);
	if (hdr_type != PCI_HEADER_TYPE_NORMAL) {
		FUNC4(pci->dev, "PCIe controller is not set to EP mode (hdr_type:0x%x)!\n",
			hdr_type);
		return -EIO;
	}

	ret = FUNC17(np, "max-functions", &epc->max_functions);
	if (ret < 0)
		epc->max_functions = 1;

	ret = FUNC3(epc, ep->phys_base, ep->addr_size,
				 ep->page_size);
	if (ret < 0) {
		FUNC4(dev, "Failed to initialize address space\n");
		return ret;
	}

	ep->msi_mem = FUNC18(epc, &ep->msi_mem_phys,
					     epc->mem->page_size);
	if (!ep->msi_mem) {
		FUNC4(dev, "Failed to reserve memory for MSI/MSI-X\n");
		return -ENOMEM;
	}
	ep->msi_cap = FUNC10(pci, PCI_CAP_ID_MSI);

	ep->msix_cap = FUNC10(pci, PCI_CAP_ID_MSIX);

	offset = FUNC9(pci, PCI_EXT_CAP_ID_REBAR);
	if (offset) {
		reg = FUNC12(pci, offset + PCI_REBAR_CTRL);
		nbars = (reg & PCI_REBAR_CTRL_NBAR_MASK) >>
			PCI_REBAR_CTRL_NBAR_SHIFT;

		FUNC8(pci);
		for (i = 0; i < nbars; i++, offset += PCI_REBAR_CTRL)
			FUNC14(pci, offset + PCI_REBAR_CAP, 0x0);
		FUNC7(pci);
	}

	FUNC13(pci);

	return 0;
}