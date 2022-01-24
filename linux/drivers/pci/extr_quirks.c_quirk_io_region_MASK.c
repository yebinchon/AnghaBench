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
typedef  unsigned int u16 ;
struct resource {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; } ;
struct pci_dev {int /*<<< orphan*/  bus; struct resource* resource; } ;
struct pci_bus_region {unsigned int start; unsigned int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,struct resource*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct resource*,struct pci_bus_region*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev, int port,
				unsigned size, int nr, const char *name)
{
	u16 region;
	struct pci_bus_region bus_region;
	struct resource *res = dev->resource + nr;

	FUNC3(dev, port, &region);
	region &= ~(size - 1);

	if (!region)
		return;

	res->name = FUNC2(dev);
	res->flags = IORESOURCE_IO;

	/* Convert from PCI bus to resource space */
	bus_region.start = region;
	bus_region.end = region + size - 1;
	FUNC4(dev->bus, res, &bus_region);

	if (!FUNC0(dev, nr))
		FUNC1(dev, "quirk: %pR claimed by %s\n", res, name);
}