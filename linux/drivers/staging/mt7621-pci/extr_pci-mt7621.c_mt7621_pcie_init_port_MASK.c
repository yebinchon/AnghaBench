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
typedef  int /*<<< orphan*/  u32 ;
struct mt7621_pcie_port {int enabled; int /*<<< orphan*/  phy; int /*<<< orphan*/  slot; struct mt7621_pcie* pcie; } ;
struct mt7621_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mt7621_pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mt7621_pcie_port *port)
{
	struct mt7621_pcie *pcie = port->pcie;
	struct device *dev = pcie->dev;
	u32 slot = port->slot;
	int err;

	/*
	 * Any MT7621 Ralink pcie controller that doesn't have 0x0101 at
	 * the end of the chip_id has inverted PCI resets.
	 */
	FUNC1(port);

	err = FUNC3(port->phy);
	if (err) {
		FUNC0(dev, "failed to initialize port%d phy\n", slot);
		return err;
	}

	err = FUNC4(port->phy);
	if (err) {
		FUNC0(dev, "failed to power on port%d phy\n", slot);
		FUNC2(port->phy);
		return err;
	}

	port->enabled = true;

	return 0;
}