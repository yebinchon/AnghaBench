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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct pci_host_bridge {struct mtk_pcie* sysdata; int /*<<< orphan*/  swizzle_irq; int /*<<< orphan*/  map_irq; int /*<<< orphan*/  ops; TYPE_1__ dev; int /*<<< orphan*/  busnr; } ;
struct mtk_pcie {int /*<<< orphan*/  ports; TYPE_2__* soc; struct device* dev; int /*<<< orphan*/  busnr; } ;
struct TYPE_4__ {int /*<<< orphan*/  ops; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pci_host_bridge* FUNC1 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_pcie*) ; 
 int FUNC4 (struct mtk_pcie*) ; 
 TYPE_2__* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  of_irq_parse_and_map_pci ; 
 int /*<<< orphan*/  pci_common_swizzle ; 
 struct mtk_pcie* FUNC6 (struct pci_host_bridge*) ; 
 int FUNC7 (struct pci_host_bridge*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mtk_pcie*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct mtk_pcie *pcie;
	struct pci_host_bridge *host;
	int err;

	host = FUNC1(dev, sizeof(*pcie));
	if (!host)
		return -ENOMEM;

	pcie = FUNC6(host);

	pcie->dev = dev;
	pcie->soc = FUNC5(dev);
	FUNC8(pdev, pcie);
	FUNC0(&pcie->ports);

	err = FUNC4(pcie);
	if (err)
		return err;

	host->busnr = pcie->busnr;
	host->dev.parent = pcie->dev;
	host->ops = pcie->soc->ops;
	host->map_irq = of_irq_parse_and_map_pci;
	host->swizzle_irq = pci_common_swizzle;
	host->sysdata = pcie;

	err = FUNC7(host);
	if (err)
		goto put_resources;

	return 0;

put_resources:
	if (!FUNC2(&pcie->ports))
		FUNC3(pcie);

	return err;
}