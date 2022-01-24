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
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct pci_host_bridge {int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/ * ops; int /*<<< orphan*/  busnr; TYPE_1__ dev; int /*<<< orphan*/  windows; } ;
struct list_head {int dummy; } ;
struct device_node {int dummy; } ;
struct cdns_pcie {int is_rc; int phy_count; int /*<<< orphan*/ * link; int /*<<< orphan*/  bus; struct resource* mem_res; int /*<<< orphan*/  reg_base; } ;
struct cdns_pcie_rc {int max_regions; int no_bar_nbits; int vendor_id; int device_id; struct resource* cfg_res; int /*<<< orphan*/  cfg_base; struct cdns_pcie pcie; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns_pcie*) ; 
 int FUNC3 (struct device*,struct list_head*,struct cdns_pcie_rc*) ; 
 int /*<<< orphan*/  cdns_pcie_host_ops ; 
 int FUNC4 (struct device*,struct cdns_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct resource*) ; 
 struct pci_host_bridge* FUNC8 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 int /*<<< orphan*/  FUNC13 (struct list_head*) ; 
 struct cdns_pcie_rc* FUNC14 (struct pci_host_bridge*) ; 
 int FUNC15 (struct pci_host_bridge*) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (struct platform_device*,struct cdns_pcie*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device*) ; 
 int FUNC20 (struct device*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct pci_host_bridge *bridge;
	struct list_head resources;
	struct cdns_pcie_rc *rc;
	struct cdns_pcie *pcie;
	struct resource *res;
	int ret;
	int phy_count;

	bridge = FUNC8(dev, sizeof(*rc));
	if (!bridge)
		return -ENOMEM;

	rc = FUNC14(bridge);
	rc->dev = dev;

	pcie = &rc->pcie;
	pcie->is_rc = true;

	rc->max_regions = 32;
	FUNC12(np, "cdns,max-outbound-regions", &rc->max_regions);

	rc->no_bar_nbits = 32;
	FUNC12(np, "cdns,no-bar-match-nbits", &rc->no_bar_nbits);

	rc->vendor_id = 0xffff;
	FUNC11(np, "vendor-id", &rc->vendor_id);

	rc->device_id = 0xffff;
	FUNC11(np, "device-id", &rc->device_id);

	res = FUNC16(pdev, IORESOURCE_MEM, "reg");
	pcie->reg_base = FUNC7(dev, res);
	if (FUNC0(pcie->reg_base)) {
		FUNC5(dev, "missing \"reg\"\n");
		return FUNC1(pcie->reg_base);
	}

	res = FUNC16(pdev, IORESOURCE_MEM, "cfg");
	rc->cfg_base = FUNC9(dev, res);
	if (FUNC0(rc->cfg_base)) {
		FUNC5(dev, "missing \"cfg\"\n");
		return FUNC1(rc->cfg_base);
	}
	rc->cfg_res = res;

	res = FUNC16(pdev, IORESOURCE_MEM, "mem");
	if (!res) {
		FUNC5(dev, "missing \"mem\"\n");
		return -EINVAL;
	}
	pcie->mem_res = res;

	ret = FUNC4(dev, pcie);
	if (ret) {
		FUNC5(dev, "failed to init phy\n");
		return ret;
	}
	FUNC17(pdev, pcie);

	FUNC19(dev);
	ret = FUNC20(dev);
	if (ret < 0) {
		FUNC5(dev, "pm_runtime_get_sync() failed\n");
		goto err_get_sync;
	}

	ret = FUNC3(dev, &resources, rc);
	if (ret)
		goto err_init;

	FUNC10(&resources, &bridge->windows);
	bridge->dev.parent = dev;
	bridge->busnr = pcie->bus;
	bridge->ops = &cdns_pcie_host_ops;
	bridge->map_irq = of_irq_parse_and_map_pci;
	bridge->swizzle_irq = pci_common_swizzle;

	ret = FUNC15(bridge);
	if (ret < 0)
		goto err_host_probe;

	return 0;

 err_host_probe:
	FUNC13(&resources);

 err_init:
	FUNC21(dev);

 err_get_sync:
	FUNC18(dev);
	FUNC2(pcie);
	phy_count = pcie->phy_count;
	while (phy_count--)
		FUNC6(pcie->link[phy_count]);

	return ret;
}