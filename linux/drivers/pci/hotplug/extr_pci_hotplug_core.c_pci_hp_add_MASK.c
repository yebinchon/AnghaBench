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
struct pci_slot {int /*<<< orphan*/  kobj; } ;
struct hotplug_slot {int /*<<< orphan*/  slot_list; struct pci_slot* pci_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct hotplug_slot*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_hotplug_slot_list ; 
 int /*<<< orphan*/  pci_hp_mutex ; 

int FUNC7(struct hotplug_slot *slot)
{
	struct pci_slot *pci_slot = slot->pci_slot;
	int result;

	result = FUNC1(pci_slot);
	if (result)
		return result;

	FUNC3(&pci_slot->kobj, KOBJ_ADD);
	FUNC5(&pci_hp_mutex);
	FUNC4(&slot->slot_list, &pci_hotplug_slot_list);
	FUNC6(&pci_hp_mutex);
	FUNC0("Added slot %s to the list\n", FUNC2(slot));
	return 0;
}