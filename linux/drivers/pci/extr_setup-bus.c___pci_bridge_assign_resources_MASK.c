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
struct pci_dev {int class; struct pci_bus* subordinate; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
#define  PCI_CLASS_BRIDGE_CARDBUS 129 
#define  PCI_CLASS_BRIDGE_PCI 128 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,struct list_head*,struct list_head*) ; 

__attribute__((used)) static void FUNC6(const struct pci_dev *bridge,
					  struct list_head *add_head,
					  struct list_head *fail_head)
{
	struct pci_bus *b;

	FUNC5((struct pci_dev *)bridge,
					 add_head, fail_head);

	b = bridge->subordinate;
	if (!b)
		return;

	FUNC0(b, add_head, fail_head);

	switch (bridge->class >> 8) {
	case PCI_CLASS_BRIDGE_PCI:
		FUNC3(b);
		break;

	case PCI_CLASS_BRIDGE_CARDBUS:
		FUNC4(b);
		break;

	default:
		FUNC2(bridge, "not setting up bridge for bus %04x:%02x\n",
			 FUNC1(b), b->number);
		break;
	}
}