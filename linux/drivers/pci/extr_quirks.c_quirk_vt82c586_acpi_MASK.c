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
struct pci_dev {int revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_BRIDGE_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *dev)
{
	if (dev->revision & 0x10)
		FUNC0(dev, 0x48, 256, PCI_BRIDGE_RESOURCES,
				"vt82c586 ACPI");
}