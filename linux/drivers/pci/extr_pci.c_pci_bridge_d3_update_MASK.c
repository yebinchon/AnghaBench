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
struct pci_dev {int bridge_d3; int /*<<< orphan*/  subordinate; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int*) ; 
 struct pci_dev* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct pci_dev*,int*),int*) ; 

void FUNC5(struct pci_dev *dev)
{
	bool remove = !FUNC0(&dev->dev);
	struct pci_dev *bridge;
	bool d3cold_ok = true;

	bridge = FUNC3(dev);
	if (!bridge || !FUNC1(bridge))
		return;

	/*
	 * If D3 is currently allowed for the bridge, removing one of its
	 * children won't change that.
	 */
	if (remove && bridge->bridge_d3)
		return;

	/*
	 * If D3 is currently allowed for the bridge and a child is added or
	 * changed, disallowance of D3 can only be caused by that child, so
	 * we only need to check that single device, not any of its siblings.
	 *
	 * If D3 is currently not allowed for the bridge, checking the device
	 * first may allow us to skip checking its siblings.
	 */
	if (!remove)
		FUNC2(dev, &d3cold_ok);

	/*
	 * If D3 is currently not allowed for the bridge, this may be caused
	 * either by the device being changed/removed or any of its siblings,
	 * so we need to go through all children to find out if one of them
	 * continues to block D3.
	 */
	if (d3cold_ok && !bridge->bridge_d3)
		FUNC4(bridge->subordinate, pci_dev_check_d3cold,
			     &d3cold_ok);

	if (bridge->bridge_d3 != d3cold_ok) {
		bridge->bridge_d3 = d3cold_ok;
		/* Propagate change to upstream bridges */
		FUNC5(bridge);
	}
}