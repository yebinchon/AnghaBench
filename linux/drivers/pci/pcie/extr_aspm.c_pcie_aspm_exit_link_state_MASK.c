#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcie_link_state {int /*<<< orphan*/  sibling; struct pcie_link_state* parent; struct pcie_link_state* root; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* subordinate; TYPE_2__* bus; } ;
struct TYPE_4__ {struct pci_dev* self; } ;
struct TYPE_3__ {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  aspm_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC6 (struct pcie_link_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct pcie_link_state*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct pci_dev *pdev)
{
	struct pci_dev *parent = pdev->bus->self;
	struct pcie_link_state *link, *root, *parent_link;

	if (!parent || !parent->link_state)
		return;

	FUNC0(&pci_bus_sem);
	FUNC4(&aspm_lock);
	/*
	 * All PCIe functions are in one slot, remove one function will remove
	 * the whole slot, so just wait until we are the last function left.
	 */
	if (!FUNC3(&parent->subordinate->devices))
		goto out;

	link = parent->link_state;
	root = link->root;
	parent_link = link->parent;

	/* All functions are removed, so just disable ASPM for the link */
	FUNC6(link, 0);
	FUNC2(&link->sibling);
	/* Clock PM is for endpoint device */
	FUNC1(link);

	/* Recheck latencies and configure upstream links */
	if (parent_link) {
		FUNC8(root);
		FUNC7(parent_link);
	}
out:
	FUNC5(&aspm_lock);
	FUNC9(&pci_bus_sem);
}