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
struct pci_slot {struct hotplug_slot* hotplug; } ;
struct pci_bus {int dummy; } ;
struct module {int dummy; } ;
struct hotplug_slot {char const* mod_name; struct pci_slot* pci_slot; struct module* owner; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct pci_slot*) ; 
 int FUNC1 (struct pci_slot*) ; 
 struct pci_slot* FUNC2 (struct pci_bus*,int,char const*,struct hotplug_slot*) ; 

int FUNC3(struct hotplug_slot *slot, struct pci_bus *bus,
			int devnr, const char *name, struct module *owner,
			const char *mod_name)
{
	struct pci_slot *pci_slot;

	if (slot == NULL)
		return -ENODEV;
	if (slot->ops == NULL)
		return -EINVAL;

	slot->owner = owner;
	slot->mod_name = mod_name;

	/*
	 * No problems if we call this interface from both ACPI_PCI_SLOT
	 * driver and call it here again. If we've already created the
	 * pci_slot, the interface will simply bump the refcount.
	 */
	pci_slot = FUNC2(bus, devnr, name, slot);
	if (FUNC0(pci_slot))
		return FUNC1(pci_slot);

	slot->pci_slot = pci_slot;
	pci_slot->hotplug = slot;
	return 0;
}