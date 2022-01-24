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
typedef  unsigned long u8 ;
typedef  scalar_t__ u16 ;
struct resource {unsigned long flags; } ;
struct pci_dev {int /*<<< orphan*/  bus; scalar_t__ io_window_1k; } ;
struct pci_bus_region {unsigned long start; unsigned long end; } ;
struct pci_bus {struct resource** resource; struct pci_dev* self; } ;

/* Variables and functions */
 unsigned long IORESOURCE_IO ; 
 unsigned long PCI_IO_1K_RANGE_MASK ; 
 int /*<<< orphan*/  PCI_IO_BASE ; 
 int /*<<< orphan*/  PCI_IO_BASE_UPPER16 ; 
 int /*<<< orphan*/  PCI_IO_LIMIT ; 
 int /*<<< orphan*/  PCI_IO_LIMIT_UPPER16 ; 
 unsigned long PCI_IO_RANGE_MASK ; 
 unsigned long PCI_IO_RANGE_TYPE_32 ; 
 unsigned long PCI_IO_RANGE_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct resource*,struct pci_bus_region*) ; 

__attribute__((used)) static void FUNC4(struct pci_bus *child)
{
	struct pci_dev *dev = child->self;
	u8 io_base_lo, io_limit_lo;
	unsigned long io_mask, io_granularity, base, limit;
	struct pci_bus_region region;
	struct resource *res;

	io_mask = PCI_IO_RANGE_MASK;
	io_granularity = 0x1000;
	if (dev->io_window_1k) {
		/* Support 1K I/O space granularity */
		io_mask = PCI_IO_1K_RANGE_MASK;
		io_granularity = 0x400;
	}

	res = child->resource[0];
	FUNC1(dev, PCI_IO_BASE, &io_base_lo);
	FUNC1(dev, PCI_IO_LIMIT, &io_limit_lo);
	base = (io_base_lo & io_mask) << 8;
	limit = (io_limit_lo & io_mask) << 8;

	if ((io_base_lo & PCI_IO_RANGE_TYPE_MASK) == PCI_IO_RANGE_TYPE_32) {
		u16 io_base_hi, io_limit_hi;

		FUNC2(dev, PCI_IO_BASE_UPPER16, &io_base_hi);
		FUNC2(dev, PCI_IO_LIMIT_UPPER16, &io_limit_hi);
		base |= ((unsigned long) io_base_hi << 16);
		limit |= ((unsigned long) io_limit_hi << 16);
	}

	if (base <= limit) {
		res->flags = (io_base_lo & PCI_IO_RANGE_TYPE_MASK) | IORESOURCE_IO;
		region.start = base;
		region.end = limit + io_granularity - 1;
		FUNC3(dev->bus, res, &region);
		FUNC0(dev, "  bridge window %pR\n", res);
	}
}