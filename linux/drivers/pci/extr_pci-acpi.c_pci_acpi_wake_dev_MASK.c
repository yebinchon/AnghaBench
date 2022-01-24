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
struct pci_dev {int pme_poll; scalar_t__ current_state; int /*<<< orphan*/  subordinate; int /*<<< orphan*/  dev; scalar_t__ pme_support; } ;
struct acpi_device_wakeup_context {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct acpi_device_wakeup_context *context)
{
	struct pci_dev *pci_dev;

	pci_dev = FUNC4(context->dev);

	if (pci_dev->pme_poll)
		pci_dev->pme_poll = false;

	if (pci_dev->current_state == PCI_D3cold) {
		FUNC2(pci_dev);
		FUNC3(&pci_dev->dev);
		return;
	}

	/* Clear PME Status if set. */
	if (pci_dev->pme_support)
		FUNC0(pci_dev);

	FUNC2(pci_dev);
	FUNC3(&pci_dev->dev);

	FUNC1(pci_dev->subordinate);
}