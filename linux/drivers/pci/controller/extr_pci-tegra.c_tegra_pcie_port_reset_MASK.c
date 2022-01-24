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
struct tegra_pcie_port {int /*<<< orphan*/  pcie; scalar_t__ reset_gpio; } ;

/* Variables and functions */
 unsigned long AFI_PEX_CTRL_RST ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 unsigned long FUNC3 (struct tegra_pcie_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct tegra_pcie_port *port)
{
	unsigned long ctrl = FUNC3(port);
	unsigned long value;

	/* pulse reset signal */
	if (port->reset_gpio) {
		FUNC2(port->reset_gpio, 1);
	} else {
		value = FUNC0(port->pcie, ctrl);
		value &= ~AFI_PEX_CTRL_RST;
		FUNC1(port->pcie, value, ctrl);
	}

	FUNC4(1000, 2000);

	if (port->reset_gpio) {
		FUNC2(port->reset_gpio, 0);
	} else {
		value = FUNC0(port->pcie, ctrl);
		value |= AFI_PEX_CTRL_RST;
		FUNC1(port->pcie, value, ctrl);
	}
}