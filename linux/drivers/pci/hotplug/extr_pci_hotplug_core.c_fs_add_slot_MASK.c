#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_slot {int /*<<< orphan*/  kobj; } ;
struct TYPE_10__ {int /*<<< orphan*/  attr; } ;
struct TYPE_9__ {int /*<<< orphan*/  attr; } ;
struct TYPE_8__ {int /*<<< orphan*/  attr; } ;
struct TYPE_7__ {int /*<<< orphan*/  attr; } ;
struct TYPE_6__ {int /*<<< orphan*/  attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_slot*) ; 
 scalar_t__ FUNC1 (struct pci_slot*) ; 
 scalar_t__ FUNC2 (struct pci_slot*) ; 
 scalar_t__ FUNC3 (struct pci_slot*) ; 
 scalar_t__ FUNC4 (struct pci_slot*) ; 
 TYPE_5__ hotplug_slot_attr_attention ; 
 TYPE_4__ hotplug_slot_attr_latch ; 
 TYPE_3__ hotplug_slot_attr_power ; 
 TYPE_2__ hotplug_slot_attr_presence ; 
 TYPE_1__ hotplug_slot_attr_test ; 
 int /*<<< orphan*/  FUNC5 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_slot*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct pci_slot *pci_slot)
{
	int retval = 0;

	/* Create symbolic link to the hotplug driver module */
	FUNC5(pci_slot);

	if (FUNC3(pci_slot)) {
		retval = FUNC7(&pci_slot->kobj,
					   &hotplug_slot_attr_power.attr);
		if (retval)
			goto exit_power;
	}

	if (FUNC1(pci_slot)) {
		retval = FUNC7(&pci_slot->kobj,
					   &hotplug_slot_attr_attention.attr);
		if (retval)
			goto exit_attention;
	}

	if (FUNC2(pci_slot)) {
		retval = FUNC7(&pci_slot->kobj,
					   &hotplug_slot_attr_latch.attr);
		if (retval)
			goto exit_latch;
	}

	if (FUNC0(pci_slot)) {
		retval = FUNC7(&pci_slot->kobj,
					   &hotplug_slot_attr_presence.attr);
		if (retval)
			goto exit_adapter;
	}

	if (FUNC4(pci_slot)) {
		retval = FUNC7(&pci_slot->kobj,
					   &hotplug_slot_attr_test.attr);
		if (retval)
			goto exit_test;
	}

	goto exit;

exit_test:
	if (FUNC0(pci_slot))
		FUNC8(&pci_slot->kobj,
				  &hotplug_slot_attr_presence.attr);
exit_adapter:
	if (FUNC2(pci_slot))
		FUNC8(&pci_slot->kobj, &hotplug_slot_attr_latch.attr);
exit_latch:
	if (FUNC1(pci_slot))
		FUNC8(&pci_slot->kobj,
				  &hotplug_slot_attr_attention.attr);
exit_attention:
	if (FUNC3(pci_slot))
		FUNC8(&pci_slot->kobj, &hotplug_slot_attr_power.attr);
exit_power:
	FUNC6(pci_slot);
exit:
	return retval;
}