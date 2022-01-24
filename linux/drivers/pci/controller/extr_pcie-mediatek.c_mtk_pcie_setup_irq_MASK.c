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
struct platform_device {int dummy; } ;
struct mtk_pcie_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  slot; struct mtk_pcie* pcie; } ;
struct mtk_pcie {struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mtk_pcie_port*) ; 
 int FUNC2 (struct mtk_pcie_port*,struct device_node*) ; 
 int /*<<< orphan*/  mtk_pcie_intr_handler ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct mtk_pcie_port *port,
			      struct device_node *node)
{
	struct mtk_pcie *pcie = port->pcie;
	struct device *dev = pcie->dev;
	struct platform_device *pdev = FUNC4(dev);
	int err;

	err = FUNC2(port, node);
	if (err) {
		FUNC0(dev, "failed to init PCIe IRQ domain\n");
		return err;
	}

	port->irq = FUNC3(pdev, port->slot);
	FUNC1(port->irq,
					 mtk_pcie_intr_handler, port);

	return 0;
}