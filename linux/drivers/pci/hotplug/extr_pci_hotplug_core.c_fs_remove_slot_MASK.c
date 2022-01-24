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
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct pci_slot *pci_slot)
{
	if (FUNC3(pci_slot))
		FUNC6(&pci_slot->kobj, &hotplug_slot_attr_power.attr);

	if (FUNC1(pci_slot))
		FUNC6(&pci_slot->kobj,
				  &hotplug_slot_attr_attention.attr);

	if (FUNC2(pci_slot))
		FUNC6(&pci_slot->kobj, &hotplug_slot_attr_latch.attr);

	if (FUNC0(pci_slot))
		FUNC6(&pci_slot->kobj,
				  &hotplug_slot_attr_presence.attr);

	if (FUNC4(pci_slot))
		FUNC6(&pci_slot->kobj, &hotplug_slot_attr_test.attr);

	FUNC5(pci_slot);
}