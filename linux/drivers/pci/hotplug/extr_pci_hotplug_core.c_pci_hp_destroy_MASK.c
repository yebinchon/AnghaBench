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
struct pci_slot {int /*<<< orphan*/ * hotplug; } ;
struct hotplug_slot {struct pci_slot* pci_slot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_slot*) ; 

void FUNC1(struct hotplug_slot *slot)
{
	struct pci_slot *pci_slot = slot->pci_slot;

	slot->pci_slot = NULL;
	pci_slot->hotplug = NULL;
	FUNC0(pci_slot);
}