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
struct hotplug_slot {int /*<<< orphan*/  pci_slot; int /*<<< orphan*/  slot_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct hotplug_slot* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hotplug_slot*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_hp_mutex ; 

void FUNC8(struct hotplug_slot *slot)
{
	struct hotplug_slot *temp;

	if (FUNC0(!slot))
		return;

	FUNC6(&pci_hp_mutex);
	temp = FUNC3(FUNC4(slot));
	if (FUNC0(temp != slot)) {
		FUNC7(&pci_hp_mutex);
		return;
	}

	FUNC5(&slot->slot_list);
	FUNC7(&pci_hp_mutex);
	FUNC1("Removed slot %s from the list\n", FUNC4(slot));
	FUNC2(slot->pci_slot);
}