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
struct pci_slot {int /*<<< orphan*/  hotplug; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_slot*) ; 

__attribute__((used)) static int FUNC5(struct pci_slot *slot, int probe)
{
	int rc;

	if (!slot || !FUNC3(slot))
		return -ENOTTY;

	if (!probe)
		FUNC2(slot);

	FUNC0();

	rc = FUNC1(slot->hotplug, probe);

	if (!probe)
		FUNC4(slot);

	return rc;
}