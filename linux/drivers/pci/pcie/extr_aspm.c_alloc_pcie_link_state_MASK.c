#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcie_link_state {int /*<<< orphan*/  sibling; struct pcie_link_state* root; struct pcie_link_state* parent; int /*<<< orphan*/  downstream; struct pci_dev* pdev; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_3__* bus; int /*<<< orphan*/  subordinate; } ;
struct TYPE_6__ {TYPE_2__* parent; } ;
struct TYPE_5__ {TYPE_1__* self; } ;
struct TYPE_4__ {struct pcie_link_state* link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ PCI_EXP_TYPE_PCIE_BRIDGE ; 
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct pcie_link_state*) ; 
 struct pcie_link_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static struct pcie_link_state *FUNC6(struct pci_dev *pdev)
{
	struct pcie_link_state *link;

	link = FUNC2(sizeof(*link), GFP_KERNEL);
	if (!link)
		return NULL;

	FUNC0(&link->sibling);
	link->pdev = pdev;
	link->downstream = FUNC4(pdev->subordinate);

	/*
	 * Root Ports and PCI/PCI-X to PCIe Bridges are roots of PCIe
	 * hierarchies.  Note that some PCIe host implementations omit
	 * the root ports entirely, in which case a downstream port on
	 * a switch may become the root of the link state chain for all
	 * its subordinate endpoints.
	 */
	if (FUNC5(pdev) == PCI_EXP_TYPE_ROOT_PORT ||
	    FUNC5(pdev) == PCI_EXP_TYPE_PCIE_BRIDGE ||
	    !pdev->bus->parent->self) {
		link->root = link;
	} else {
		struct pcie_link_state *parent;

		parent = pdev->bus->parent->self->link_state;
		if (!parent) {
			FUNC1(link);
			return NULL;
		}

		link->parent = parent;
		link->root = link->parent->root;
	}

	FUNC3(&link->sibling, &link_list);
	pdev->link_state = link;
	return link;
}