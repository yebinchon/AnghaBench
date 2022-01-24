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
typedef  int u32 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_BRIDGE_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int,scalar_t__,char*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	u32 res_a;

	FUNC3(dev, 0x40, 64, PCI_BRIDGE_RESOURCES, "PIIX4 ACPI");
	FUNC3(dev, 0x90, 16, PCI_BRIDGE_RESOURCES+1, "PIIX4 SMB");

	/* Device resource A has enables for some of the other ones */
	FUNC0(dev, 0x5c, &res_a);

	FUNC1(dev, "PIIX4 devres B", 0x60, 3 << 21);
	FUNC1(dev, "PIIX4 devres C", 0x64, 3 << 21);

	/* Device resource D is just bitfields for static resources */

	/* Device 12 enabled? */
	if (res_a & (1 << 29)) {
		FUNC1(dev, "PIIX4 devres E", 0x68, 1 << 20);
		FUNC2(dev, "PIIX4 devres F", 0x6c, 1 << 7);
	}
	/* Device 13 enabled? */
	if (res_a & (1 << 30)) {
		FUNC1(dev, "PIIX4 devres G", 0x70, 1 << 20);
		FUNC2(dev, "PIIX4 devres H", 0x74, 1 << 7);
	}
	FUNC1(dev, "PIIX4 devres I", 0x78, 1 << 20);
	FUNC1(dev, "PIIX4 devres J", 0x7c, 1 << 20);
}