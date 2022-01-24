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
typedef  int u16 ;
struct resource {int flags; } ;
struct pci_dev {int rom_base_reg; int /*<<< orphan*/  mmio_always_on; int /*<<< orphan*/  bus; scalar_t__ is_virtfn; struct resource* resource; } ;
struct pci_bus_region {int start; } ;

/* Variables and functions */
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM_64 ; 
 int IORESOURCE_PCI_FIXED ; 
 int IORESOURCE_ROM_ENABLE ; 
 int IORESOURCE_UNSET ; 
 int PCI_BASE_ADDRESS_0 ; 
 int PCI_BASE_ADDRESS_IO_MASK ; 
 int PCI_BASE_ADDRESS_MEM_MASK ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_ROM_ADDRESS_ENABLE ; 
 int PCI_ROM_ADDRESS_MASK ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct pci_bus_region*,struct resource*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev, int resno)
{
	struct pci_bus_region region;
	bool disable;
	u16 cmd;
	u32 new, check, mask;
	int reg;
	struct resource *res = dev->resource + resno;

	/* Per SR-IOV spec 3.4.1.11, VF BARs are RO zero */
	if (dev->is_virtfn)
		return;

	/*
	 * Ignore resources for unimplemented BARs and unused resource slots
	 * for 64 bit BARs.
	 */
	if (!res->flags)
		return;

	if (res->flags & IORESOURCE_UNSET)
		return;

	/*
	 * Ignore non-moveable resources.  This might be legacy resources for
	 * which no functional BAR register exists or another important
	 * system resource we shouldn't move around.
	 */
	if (res->flags & IORESOURCE_PCI_FIXED)
		return;

	FUNC5(dev->bus, &region, res);
	new = region.start;

	if (res->flags & IORESOURCE_IO) {
		mask = (u32)PCI_BASE_ADDRESS_IO_MASK;
		new |= res->flags & ~PCI_BASE_ADDRESS_IO_MASK;
	} else if (resno == PCI_ROM_RESOURCE) {
		mask = PCI_ROM_ADDRESS_MASK;
	} else {
		mask = (u32)PCI_BASE_ADDRESS_MEM_MASK;
		new |= res->flags & ~PCI_BASE_ADDRESS_MEM_MASK;
	}

	if (resno < PCI_ROM_RESOURCE) {
		reg = PCI_BASE_ADDRESS_0 + 4 * resno;
	} else if (resno == PCI_ROM_RESOURCE) {

		/*
		 * Apparently some Matrox devices have ROM BARs that read
		 * as zero when disabled, so don't update ROM BARs unless
		 * they're enabled.  See https://lkml.org/lkml/2005/8/30/138.
		 */
		if (!(res->flags & IORESOURCE_ROM_ENABLE))
			return;

		reg = dev->rom_base_reg;
		new |= PCI_ROM_ADDRESS_ENABLE;
	} else
		return;

	/*
	 * We can't update a 64-bit BAR atomically, so when possible,
	 * disable decoding so that a half-updated BAR won't conflict
	 * with another device.
	 */
	disable = (res->flags & IORESOURCE_MEM_64) && !dev->mmio_always_on;
	if (disable) {
		FUNC2(dev, PCI_COMMAND, &cmd);
		FUNC4(dev, PCI_COMMAND,
				      cmd & ~PCI_COMMAND_MEMORY);
	}

	FUNC3(dev, reg, new);
	FUNC1(dev, reg, &check);

	if ((new ^ check) & mask) {
		FUNC0(dev, "BAR %d: error updating (%#08x != %#08x)\n",
			resno, new, check);
	}

	if (res->flags & IORESOURCE_MEM_64) {
		new = region.start >> 16 >> 16;
		FUNC3(dev, reg + 4, new);
		FUNC1(dev, reg + 4, &check);
		if (check != new) {
			FUNC0(dev, "BAR %d: error updating (high %#08x != %#08x)\n",
				resno, new, check);
		}
	}

	if (disable)
		FUNC4(dev, PCI_COMMAND, cmd);
}