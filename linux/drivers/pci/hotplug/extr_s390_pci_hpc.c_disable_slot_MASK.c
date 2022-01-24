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
struct slot {TYPE_1__* zdev; } ;
struct pci_dev {int dummy; } ;
struct hotplug_slot {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ZPCI_DEVFN ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct slot*) ; 
 struct slot* FUNC4 (struct hotplug_slot*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hotplug_slot *hotplug_slot)
{
	struct slot *slot = FUNC4(hotplug_slot);
	struct pci_dev *pdev;
	int rc;

	if (!FUNC6(slot->zdev->state))
		return -EIO;

	pdev = FUNC1(slot->zdev->bus, ZPCI_DEVFN);
	if (pdev) {
		FUNC2(pdev);
		FUNC0(pdev);
	}

	rc = FUNC5(slot->zdev);
	if (rc)
		return rc;

	return FUNC3(slot);
}