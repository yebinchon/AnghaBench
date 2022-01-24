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
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ msi_irq; int /*<<< orphan*/ * ops; } ;
struct histb_pcie {int /*<<< orphan*/ * phy; int /*<<< orphan*/ * bus_reset; int /*<<< orphan*/ * sys_reset; int /*<<< orphan*/ * soft_reset; int /*<<< orphan*/ * bus_clk; int /*<<< orphan*/ * sys_clk; int /*<<< orphan*/ * pipe_clk; int /*<<< orphan*/ * aux_clk; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/ * vpcie; int /*<<< orphan*/ * ctrl; struct dw_pcie* pci; } ;
struct dw_pcie {int /*<<< orphan*/ * dbi_base; int /*<<< orphan*/ * ops; struct device* dev; struct pcie_port pp; } ;
struct device_node {int dummy; } ;
typedef  enum of_gpio_flags { ____Placeholder_of_gpio_flags } of_gpio_flags ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCI_MSI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long GPIOF_ACTIVE_LOW ; 
 unsigned long GPIOF_DIR_OUT ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int OF_GPIO_ACTIVE_LOW ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,int /*<<< orphan*/ ,unsigned long,char*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 void* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (struct device*,char*) ; 
 void* FUNC11 (struct device*,char*) ; 
 int FUNC12 (struct pcie_port*) ; 
 int /*<<< orphan*/  dw_pcie_ops ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (struct pcie_port*) ; 
 int /*<<< orphan*/  histb_pcie_host_ops ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*,char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct platform_device*,char*) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct histb_pcie*) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct histb_pcie *hipcie;
	struct dw_pcie *pci;
	struct pcie_port *pp;
	struct resource *res;
	struct device_node *np = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	enum of_gpio_flags of_flags;
	unsigned long flag = GPIOF_DIR_OUT;
	int ret;

	hipcie = FUNC8(dev, sizeof(*hipcie), GFP_KERNEL);
	if (!hipcie)
		return -ENOMEM;

	pci = FUNC8(dev, sizeof(*pci), GFP_KERNEL);
	if (!pci)
		return -ENOMEM;

	hipcie->pci = pci;
	pp = &pci->pp;
	pci->dev = dev;
	pci->ops = &dw_pcie_ops;

	res = FUNC18(pdev, IORESOURCE_MEM, "control");
	hipcie->ctrl = FUNC7(dev, res);
	if (FUNC1(hipcie->ctrl)) {
		FUNC3(dev, "cannot get control reg base\n");
		return FUNC2(hipcie->ctrl);
	}

	res = FUNC18(pdev, IORESOURCE_MEM, "rc-dbi");
	pci->dbi_base = FUNC7(dev, res);
	if (FUNC1(pci->dbi_base)) {
		FUNC3(dev, "cannot get rc-dbi base\n");
		return FUNC2(pci->dbi_base);
	}

	hipcie->vpcie = FUNC10(dev, "vpcie");
	if (FUNC1(hipcie->vpcie)) {
		if (FUNC2(hipcie->vpcie) != -ENODEV)
			return FUNC2(hipcie->vpcie);
		hipcie->vpcie = NULL;
	}

	hipcie->reset_gpio = FUNC15(np,
				"reset-gpios", 0, &of_flags);
	if (of_flags & OF_GPIO_ACTIVE_LOW)
		flag |= GPIOF_ACTIVE_LOW;
	if (FUNC13(hipcie->reset_gpio)) {
		ret = FUNC6(dev, hipcie->reset_gpio,
				flag, "PCIe device power control");
		if (ret) {
			FUNC3(dev, "unable to request gpio\n");
			return ret;
		}
	}

	hipcie->aux_clk = FUNC5(dev, "aux");
	if (FUNC1(hipcie->aux_clk)) {
		FUNC3(dev, "Failed to get PCIe aux clk\n");
		return FUNC2(hipcie->aux_clk);
	}

	hipcie->pipe_clk = FUNC5(dev, "pipe");
	if (FUNC1(hipcie->pipe_clk)) {
		FUNC3(dev, "Failed to get PCIe pipe clk\n");
		return FUNC2(hipcie->pipe_clk);
	}

	hipcie->sys_clk = FUNC5(dev, "sys");
	if (FUNC1(hipcie->sys_clk)) {
		FUNC3(dev, "Failed to get PCIEe sys clk\n");
		return FUNC2(hipcie->sys_clk);
	}

	hipcie->bus_clk = FUNC5(dev, "bus");
	if (FUNC1(hipcie->bus_clk)) {
		FUNC3(dev, "Failed to get PCIe bus clk\n");
		return FUNC2(hipcie->bus_clk);
	}

	hipcie->soft_reset = FUNC11(dev, "soft");
	if (FUNC1(hipcie->soft_reset)) {
		FUNC3(dev, "couldn't get soft reset\n");
		return FUNC2(hipcie->soft_reset);
	}

	hipcie->sys_reset = FUNC11(dev, "sys");
	if (FUNC1(hipcie->sys_reset)) {
		FUNC3(dev, "couldn't get sys reset\n");
		return FUNC2(hipcie->sys_reset);
	}

	hipcie->bus_reset = FUNC11(dev, "bus");
	if (FUNC1(hipcie->bus_reset)) {
		FUNC3(dev, "couldn't get bus reset\n");
		return FUNC2(hipcie->bus_reset);
	}

	if (FUNC0(CONFIG_PCI_MSI)) {
		pp->msi_irq = FUNC17(pdev, "msi");
		if (pp->msi_irq < 0) {
			FUNC3(dev, "Failed to get MSI IRQ\n");
			return pp->msi_irq;
		}
	}

	hipcie->phy = FUNC9(dev, "phy");
	if (FUNC1(hipcie->phy)) {
		FUNC4(dev, "no pcie-phy found\n");
		hipcie->phy = NULL;
		/* fall through here!
		 * if no pcie-phy found, phy init
		 * should be done under boot!
		 */
	} else {
		FUNC16(hipcie->phy);
	}

	pp->ops = &histb_pcie_host_ops;

	FUNC19(pdev, hipcie);

	ret = FUNC14(pp);
	if (ret) {
		FUNC3(dev, "failed to enable host\n");
		return ret;
	}

	ret = FUNC12(pp);
	if (ret) {
		FUNC3(dev, "failed to initialize host\n");
		return ret;
	}

	return 0;
}