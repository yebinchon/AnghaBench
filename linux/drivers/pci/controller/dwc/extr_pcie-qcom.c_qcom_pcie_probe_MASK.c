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
struct qcom_pcie {void* phy; TYPE_1__* ops; void* elbi; void* parf; void* reset; struct dw_pcie* pci; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {int msi_irq; int /*<<< orphan*/ * ops; } ;
struct dw_pcie {void* dbi_base; struct pcie_port pp; int /*<<< orphan*/ * ops; struct device* dev; } ;
struct TYPE_2__ {int (* get_resources ) (struct qcom_pcie*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 void* FUNC8 (struct device*,char*) ; 
 int FUNC9 (struct pcie_port*) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 TYPE_1__* FUNC10 (struct device*) ; 
 int FUNC11 (void*) ; 
 int FUNC12 (struct platform_device*,char*) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct qcom_pcie*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (struct device*) ; 
 int FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (struct device*) ; 
 int /*<<< orphan*/  qcom_pcie_dw_ops ; 
 int FUNC19 (struct qcom_pcie*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct pcie_port *pp;
	struct dw_pcie *pci;
	struct qcom_pcie *pcie;
	int ret;

	pcie = FUNC6(dev, sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;

	pci = FUNC6(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	FUNC16(dev);
	ret = FUNC17(dev);
	if (ret < 0) {
		FUNC15(dev);
		return ret;
	}

	pci->dev = dev;
	pci->ops = &dw_pcie_ops;
	pp = &pci->pp;

	pcie->pci = pci;

	pcie->ops = FUNC10(dev);

	pcie->reset = FUNC4(dev, "perst", GPIOD_OUT_HIGH);
	if (FUNC1(pcie->reset)) {
		ret = FUNC2(pcie->reset);
		goto err_pm_runtime_put;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, "parf");
	pcie->parf = FUNC5(dev, res);
	if (FUNC1(pcie->parf)) {
		ret = FUNC2(pcie->parf);
		goto err_pm_runtime_put;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, "dbi");
	pci->dbi_base = FUNC7(dev, res);
	if (FUNC1(pci->dbi_base)) {
		ret = FUNC2(pci->dbi_base);
		goto err_pm_runtime_put;
	}

	res = FUNC13(pdev, IORESOURCE_MEM, "elbi");
	pcie->elbi = FUNC5(dev, res);
	if (FUNC1(pcie->elbi)) {
		ret = FUNC2(pcie->elbi);
		goto err_pm_runtime_put;
	}

	pcie->phy = FUNC8(dev, "pciephy");
	if (FUNC1(pcie->phy)) {
		ret = FUNC2(pcie->phy);
		goto err_pm_runtime_put;
	}

	ret = pcie->ops->get_resources(pcie);
	if (ret)
		goto err_pm_runtime_put;

	pp->ops = &qcom_pcie_dw_ops;

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC12(pdev, "msi");
		if (pp->msi_irq < 0) {
			ret = pp->msi_irq;
			goto err_pm_runtime_put;
		}
	}

	ret = FUNC11(pcie->phy);
	if (ret) {
		FUNC15(&pdev->dev);
		goto err_pm_runtime_put;
	}

	FUNC14(pdev, pcie);

	ret = FUNC9(pp);
	if (ret) {
		FUNC3(dev, "cannot initialize host\n");
		FUNC15(&pdev->dev);
		goto err_pm_runtime_put;
	}

	return 0;

err_pm_runtime_put:
	FUNC18(dev);
	FUNC15(dev);

	return ret;
}