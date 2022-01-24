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
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_slot*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_slot*) ; 
 scalar_t__ FUNC5 (struct pci_slot*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_slot*) ; 

__attribute__((used)) static int FUNC7(struct pci_slot *slot)
{
	int rc;

	rc = FUNC2(slot, 1);
	if (rc)
		return rc;

	if (FUNC5(slot)) {
		FUNC4(slot);
		FUNC0();
		rc = FUNC1(slot->hotplug, 0);
		FUNC3(slot);
		FUNC6(slot);
	} else
		rc = -EAGAIN;

	return rc;
}