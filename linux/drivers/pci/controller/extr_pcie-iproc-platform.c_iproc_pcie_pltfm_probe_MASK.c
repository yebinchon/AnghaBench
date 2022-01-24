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
typedef  int /*<<< orphan*/  u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pci_host_bridge {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  axi_offset; } ;
struct iproc_pcie {int type; int need_ob_cfg; int /*<<< orphan*/  map_irq; int /*<<< orphan*/  phy; scalar_t__ need_ib_cfg; TYPE_1__ ob; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  base; struct device* dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
typedef  enum iproc_pcie_type { ____Placeholder_iproc_pcie_type } iproc_pcie_type ;

/* Variables and functions */
 int ENOMEM ; 
#define  IPROC_PCIE_PAXC 129 
#define  IPROC_PCIE_PAXC_V2 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pci_host_bridge* FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int FUNC8 (struct iproc_pcie*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC10 (struct device*) ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct iproc_pcie* FUNC14 (struct pci_host_bridge*) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct iproc_pcie*) ; 
 int /*<<< orphan*/  FUNC16 (struct resource*) ; 
 int /*<<< orphan*/  resources ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct iproc_pcie *pcie;
	struct device_node *np = dev->of_node;
	struct resource reg;
	resource_size_t iobase = 0;
	FUNC1(resources);
	struct pci_host_bridge *bridge;
	int ret;

	bridge = FUNC5(dev, sizeof(*pcie));
	if (!bridge)
		return -ENOMEM;

	pcie = FUNC14(bridge);

	pcie->dev = dev;
	pcie->type = (enum iproc_pcie_type) FUNC10(dev);

	ret = FUNC9(np, 0, &reg);
	if (ret < 0) {
		FUNC3(dev, "unable to obtain controller resources\n");
		return ret;
	}

	pcie->base = FUNC6(dev, reg.start,
					     FUNC16(&reg));
	if (!pcie->base) {
		FUNC3(dev, "unable to map controller registers\n");
		return -ENOMEM;
	}
	pcie->base_addr = reg.start;

	if (FUNC11(np, "brcm,pcie-ob")) {
		u32 val;

		ret = FUNC12(np, "brcm,pcie-ob-axi-offset",
					   &val);
		if (ret) {
			FUNC3(dev,
				"missing brcm,pcie-ob-axi-offset property\n");
			return ret;
		}
		pcie->ob.axi_offset = val;
		pcie->need_ob_cfg = true;
	}

	/*
	 * DT nodes are not used by all platforms that use the iProc PCIe
	 * core driver. For platforms that require explicit inbound mapping
	 * configuration, "dma-ranges" would have been present in DT
	 */
	pcie->need_ib_cfg = FUNC11(np, "dma-ranges");

	/* PHY use is optional */
	pcie->phy = FUNC7(dev, "pcie-phy");
	if (FUNC0(pcie->phy))
		return FUNC2(pcie->phy);

	ret = FUNC4(dev, 0, 0xff, &resources,
						    &iobase);
	if (ret) {
		FUNC3(dev, "unable to get PCI host bridge resources\n");
		return ret;
	}

	/* PAXC doesn't support legacy IRQs, skip mapping */
	switch (pcie->type) {
	case IPROC_PCIE_PAXC:
	case IPROC_PCIE_PAXC_V2:
		break;
	default:
		pcie->map_irq = of_irq_parse_and_map_pci;
	}

	ret = FUNC8(pcie, &resources);
	if (ret) {
		FUNC3(dev, "PCIe controller setup failed\n");
		FUNC13(&resources);
		return ret;
	}

	FUNC15(pdev, pcie);
	return 0;
}