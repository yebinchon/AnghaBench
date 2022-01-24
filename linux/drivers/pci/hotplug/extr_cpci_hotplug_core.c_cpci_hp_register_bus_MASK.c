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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct slot {int number; int /*<<< orphan*/  slot_list; TYPE_1__ hotplug_slot; int /*<<< orphan*/  devfn; struct pci_bus* bus; } ;
struct pci_bus {int number; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int SLOT_NAME_SIZE ; 
 scalar_t__ controller ; 
 int /*<<< orphan*/  cpci_hotplug_slot_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 struct slot* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_rwsem ; 
 int FUNC7 (TYPE_1__*,struct pci_bus*,int,char*) ; 
 int /*<<< orphan*/  slot_list ; 
 char* FUNC8 (struct slot*) ; 
 int /*<<< orphan*/  slots ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int
FUNC11(struct pci_bus *bus, u8 first, u8 last)
{
	struct slot *slot;
	char name[SLOT_NAME_SIZE];
	int status;
	int i;

	if (!(controller && bus))
		return -ENODEV;

	/*
	 * Create a structure for each slot, and register that slot
	 * with the pci_hotplug subsystem.
	 */
	for (i = first; i <= last; ++i) {
		slot = FUNC5(sizeof(struct slot), GFP_KERNEL);
		if (!slot) {
			status = -ENOMEM;
			goto error;
		}

		slot->bus = bus;
		slot->number = i;
		slot->devfn = FUNC0(i, 0);

		FUNC9(name, SLOT_NAME_SIZE, "%02x:%02x", bus->number, i);

		slot->hotplug_slot.ops = &cpci_hotplug_slot_ops;

		FUNC1("registering slot %s", name);
		status = FUNC7(&slot->hotplug_slot, bus, i, name);
		if (status) {
			FUNC3("pci_hp_register failed with error %d", status);
			goto error_slot;
		}
		FUNC1("slot registered with name: %s", FUNC8(slot));

		/* Add slot to our internal list */
		FUNC2(&list_rwsem);
		FUNC6(&slot->slot_list, &slot_list);
		slots++;
		FUNC10(&list_rwsem);
	}
	return 0;
error_slot:
	FUNC4(slot);
error:
	return status;
}