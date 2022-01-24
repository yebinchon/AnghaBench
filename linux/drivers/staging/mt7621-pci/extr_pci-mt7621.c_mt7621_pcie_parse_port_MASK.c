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
struct mt7621_pcie_port {int slot; int /*<<< orphan*/  list; struct mt7621_pcie* pcie; int /*<<< orphan*/  phy; int /*<<< orphan*/  pcie_rst; int /*<<< orphan*/  base; } ;
struct mt7621_pcie {int /*<<< orphan*/  ports; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct mt7621_pcie_port* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct device_node*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC11(struct mt7621_pcie *pcie,
				  struct device_node *node,
				  int slot)
{
	struct mt7621_pcie_port *port;
	struct device *dev = pcie->dev;
	struct device_node *pnode = dev->of_node;
	struct resource regs;
	char name[10];
	int err;

	port = FUNC5(dev, sizeof(*port), GFP_KERNEL);
	if (!port)
		return -ENOMEM;

	err = FUNC9(pnode, slot + 1, &regs);
	if (err) {
		FUNC3(dev, "missing \"reg\" property\n");
		return err;
	}

	port->base = FUNC4(dev, &regs);
	if (FUNC1(port->base))
		return FUNC2(port->base);

	FUNC10(name, sizeof(name), "pcie%d", slot);
	port->pcie_rst = FUNC7(dev, name);
	if (FUNC2(port->pcie_rst) == -EPROBE_DEFER) {
		FUNC3(dev, "failed to get pcie%d reset control\n", slot);
		return FUNC2(port->pcie_rst);
	}

	FUNC10(name, sizeof(name), "pcie-phy%d", slot);
	port->phy = FUNC6(dev, name);
	if (FUNC1(port->phy))
		return FUNC2(port->phy);

	port->slot = slot;
	port->pcie = pcie;

	FUNC0(&port->list);
	FUNC8(&port->list, &pcie->ports);

	return 0;
}