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
typedef  unsigned int u32 ;
struct vme_master_resource {int number; int /*<<< orphan*/  lock; scalar_t__ kern_base; TYPE_1__* parent; } ;
struct tsi148_driver {int /*<<< orphan*/  vme_rmw; scalar_t__ base; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct tsi148_driver* driver_priv; } ;

/* Variables and functions */
 scalar_t__ TSI148_LCSR_OFFSET_OTSAL ; 
 scalar_t__ TSI148_LCSR_OFFSET_OTSAU ; 
 scalar_t__* TSI148_LCSR_OT ; 
 scalar_t__ TSI148_LCSR_RMWAL ; 
 scalar_t__ TSI148_LCSR_RMWAU ; 
 scalar_t__ TSI148_LCSR_RMWC ; 
 scalar_t__ TSI148_LCSR_RMWEN ; 
 scalar_t__ TSI148_LCSR_RMWS ; 
 scalar_t__ TSI148_LCSR_VMCTRL ; 
 unsigned int TSI148_LCSR_VMCTRL_RMWEN ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC8(struct vme_master_resource *image,
	unsigned int mask, unsigned int compare, unsigned int swap,
	loff_t offset)
{
	unsigned long long pci_addr;
	unsigned int pci_addr_high, pci_addr_low;
	u32 tmp, result;
	int i;
	struct tsi148_driver *bridge;

	bridge = image->parent->driver_priv;

	/* Find the PCI address that maps to the desired VME address */
	i = image->number;

	/* Locking as we can only do one of these at a time */
	FUNC2(&bridge->vme_rmw);

	/* Lock image */
	FUNC6(&image->lock);

	pci_addr_high = FUNC0(bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTSAU);
	pci_addr_low = FUNC0(bridge->base + TSI148_LCSR_OT[i] +
		TSI148_LCSR_OFFSET_OTSAL);

	FUNC4(pci_addr_high, pci_addr_low, &pci_addr);
	FUNC5(pci_addr + offset, &pci_addr_high, &pci_addr_low);

	/* Configure registers */
	FUNC1(mask, bridge->base + TSI148_LCSR_RMWEN);
	FUNC1(compare, bridge->base + TSI148_LCSR_RMWC);
	FUNC1(swap, bridge->base + TSI148_LCSR_RMWS);
	FUNC1(pci_addr_high, bridge->base + TSI148_LCSR_RMWAU);
	FUNC1(pci_addr_low, bridge->base + TSI148_LCSR_RMWAL);

	/* Enable RMW */
	tmp = FUNC0(bridge->base + TSI148_LCSR_VMCTRL);
	tmp |= TSI148_LCSR_VMCTRL_RMWEN;
	FUNC1(tmp, bridge->base + TSI148_LCSR_VMCTRL);

	/* Kick process off with a read to the required address. */
	result = FUNC0(image->kern_base + offset);

	/* Disable RMW */
	tmp = FUNC0(bridge->base + TSI148_LCSR_VMCTRL);
	tmp &= ~TSI148_LCSR_VMCTRL_RMWEN;
	FUNC1(tmp, bridge->base + TSI148_LCSR_VMCTRL);

	FUNC7(&image->lock);

	FUNC3(&bridge->vme_rmw);

	return result;
}