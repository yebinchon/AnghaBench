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
struct pci_bus {int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 scalar_t__ acpi_pci_disabled ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 

void FUNC2(struct pci_bus *bus)
{
	if (acpi_pci_disabled || !bus->bridge)
		return;

	FUNC1(bus);
	FUNC0(bus);
}