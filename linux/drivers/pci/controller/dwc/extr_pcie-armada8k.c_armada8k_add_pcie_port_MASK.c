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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ irq; int /*<<< orphan*/ * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct armada8k_pcie {struct dw_pcie* pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  armada8k_pcie_host_ops ; 
 int /*<<< orphan*/  armada8k_pcie_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int FUNC1 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct armada8k_pcie*) ; 
 int FUNC2 (struct pcie_port*) ; 
 scalar_t__ FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct armada8k_pcie *pcie,
				  struct platform_device *pdev)
{
	struct dw_pcie *pci = pcie->pci;
	struct pcie_port *pp = &pci->pp;
	struct device *dev = &pdev->dev;
	int ret;

	pp->ops = &armada8k_pcie_host_ops;

	pp->irq = FUNC3(pdev, 0);
	if (pp->irq < 0) {
		FUNC0(dev, "failed to get irq for port\n");
		return pp->irq;
	}

	ret = FUNC1(dev, pp->irq, armada8k_pcie_irq_handler,
			       IRQF_SHARED, "armada8k-pcie", pcie);
	if (ret) {
		FUNC0(dev, "failed to request irq %d\n", pp->irq);
		return ret;
	}

	ret = FUNC2(pp);
	if (ret) {
		FUNC0(dev, "failed to initialize host: %d\n", ret);
		return ret;
	}

	return 0;
}