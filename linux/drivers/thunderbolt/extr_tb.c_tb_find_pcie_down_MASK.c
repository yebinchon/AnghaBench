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
struct TYPE_2__ {int max_port_number; } ;
struct tb_switch {struct tb_port* ports; TYPE_1__ config; } ;
struct tb_port {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_TYPE_PCIE_DOWN ; 
 scalar_t__ FUNC0 (int) ; 
 struct tb_port* FUNC1 (struct tb_switch*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tb_port*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_switch*) ; 
 scalar_t__ FUNC6 (struct tb_switch*) ; 
 scalar_t__ FUNC7 (struct tb_switch*) ; 

__attribute__((used)) static struct tb_port *FUNC8(struct tb_switch *sw,
					 const struct tb_port *port)
{
	/*
	 * To keep plugging devices consistently in the same PCIe
	 * hierarchy, do mapping here for root switch downstream PCIe
	 * ports.
	 */
	if (!FUNC5(sw)) {
		int phy_port = FUNC3(port->port);
		int index;

		/*
		 * Hard-coded Thunderbolt port to PCIe down port mapping
		 * per controller.
		 */
		if (FUNC6(sw))
			index = !phy_port ? 6 : 7;
		else if (FUNC7(sw))
			index = !phy_port ? 6 : 8;
		else
			goto out;

		/* Validate the hard-coding */
		if (FUNC0(index > sw->config.max_port_number))
			goto out;
		if (FUNC0(!FUNC4(&sw->ports[index])))
			goto out;
		if (FUNC0(FUNC2(&sw->ports[index])))
			goto out;

		return &sw->ports[index];
	}

out:
	return FUNC1(sw, TB_TYPE_PCIE_DOWN);
}