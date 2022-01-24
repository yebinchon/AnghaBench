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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {struct device* parent; } ;
struct pci_host_bridge {int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/ * ops; scalar_t__ busnr; struct advk_pcie* sysdata; TYPE_1__ dev; int /*<<< orphan*/  windows; } ;
struct advk_pcie {int /*<<< orphan*/  resources; int /*<<< orphan*/  base; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int IRQF_NO_THREAD ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct advk_pcie*) ; 
 int FUNC3 (struct advk_pcie*) ; 
 int /*<<< orphan*/  advk_pcie_irq_handler ; 
 int /*<<< orphan*/  advk_pcie_ops ; 
 int FUNC4 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC5 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC6 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC7 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC8 (struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,struct resource*) ; 
 struct pci_host_bridge* FUNC11 (struct device*,int) ; 
 int FUNC12 (struct device*,int,int /*<<< orphan*/ ,int,char*,struct advk_pcie*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 struct advk_pcie* FUNC14 (struct pci_host_bridge*) ; 
 int FUNC15 (struct pci_host_bridge*) ; 
 int FUNC16 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC17 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct advk_pcie *pcie;
	struct resource *res;
	struct pci_host_bridge *bridge;
	int ret, irq;

	bridge = FUNC11(dev, sizeof(struct advk_pcie));
	if (!bridge)
		return -ENOMEM;

	pcie = FUNC14(bridge);
	pcie->pdev = pdev;

	res = FUNC17(pdev, IORESOURCE_MEM, 0);
	pcie->base = FUNC10(dev, res);
	if (FUNC0(pcie->base))
		return FUNC1(pcie->base);

	irq = FUNC16(pdev, 0);
	ret = FUNC12(dev, irq, advk_pcie_irq_handler,
			       IRQF_SHARED | IRQF_NO_THREAD, "advk-pcie",
			       pcie);
	if (ret) {
		FUNC9(dev, "Failed to register interrupt\n");
		return ret;
	}

	ret = FUNC4(pcie);
	if (ret) {
		FUNC9(dev, "Failed to parse resources\n");
		return ret;
	}

	FUNC7(pcie);

	FUNC8(pcie);

	ret = FUNC2(pcie);
	if (ret) {
		FUNC9(dev, "Failed to initialize irq\n");
		return ret;
	}

	ret = FUNC3(pcie);
	if (ret) {
		FUNC9(dev, "Failed to initialize irq\n");
		FUNC5(pcie);
		return ret;
	}

	FUNC13(&pcie->resources, &bridge->windows);
	bridge->dev.parent = dev;
	bridge->sysdata = pcie;
	bridge->busnr = 0;
	bridge->ops = &advk_pcie_ops;
	bridge->map_irq = of_irq_parse_and_map_pci;
	bridge->swizzle_irq = pci_common_swizzle;

	ret = FUNC15(bridge);
	if (ret < 0) {
		FUNC6(pcie);
		FUNC5(pcie);
		return ret;
	}

	return 0;
}