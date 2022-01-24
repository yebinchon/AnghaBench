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
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct tegra_pcie_port {int /*<<< orphan*/  list; TYPE_1__ regs; int /*<<< orphan*/  base; struct tegra_pcie* pcie; } ;
struct tegra_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct tegra_pcie_port *port)
{
	struct tegra_pcie *pcie = port->pcie;
	struct device *dev = pcie->dev;

	FUNC0(dev, port->base);
	FUNC2(dev, port->regs.start,
				FUNC4(&port->regs));
	FUNC3(&port->list);
	FUNC1(dev, port);
}