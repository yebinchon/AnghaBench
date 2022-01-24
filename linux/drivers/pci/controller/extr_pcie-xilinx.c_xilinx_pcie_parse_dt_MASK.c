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
struct xilinx_pcie_port {int /*<<< orphan*/  irq; int /*<<< orphan*/  reg_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int IRQF_NO_THREAD ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct xilinx_pcie_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  xilinx_pcie_intr_handler ; 

__attribute__((used)) static int FUNC7(struct xilinx_pcie_port *port)
{
	struct device *dev = port->dev;
	struct device_node *node = dev->of_node;
	struct resource regs;
	int err;

	err = FUNC6(node, 0, &regs);
	if (err) {
		FUNC2(dev, "missing \"reg\" property\n");
		return err;
	}

	port->reg_base = FUNC3(dev, &regs);
	if (FUNC0(port->reg_base))
		return FUNC1(port->reg_base);

	port->irq = FUNC5(node, 0);
	err = FUNC4(dev, port->irq, xilinx_pcie_intr_handler,
			       IRQF_SHARED | IRQF_NO_THREAD,
			       "xilinx-pcie", port);
	if (err) {
		FUNC2(dev, "unable to request irq %d\n", port->irq);
		return err;
	}

	return 0;
}