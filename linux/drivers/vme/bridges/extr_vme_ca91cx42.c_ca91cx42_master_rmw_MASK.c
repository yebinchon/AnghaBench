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
struct vme_master_resource {int /*<<< orphan*/  lock; scalar_t__ kern_base; TYPE_1__* parent; } ;
struct device {int dummy; } ;
struct ca91cx42_driver {int /*<<< orphan*/  vme_rmw; scalar_t__ base; } ;
typedef  uintptr_t loff_t ;
struct TYPE_2__ {struct device* parent; struct ca91cx42_driver* driver_priv; } ;

/* Variables and functions */
 uintptr_t CA91CX42_SCYC_CTL_CYC_RMW ; 
 unsigned int EINVAL ; 
 scalar_t__ SCYC_ADDR ; 
 scalar_t__ SCYC_CMP ; 
 scalar_t__ SCYC_CTL ; 
 scalar_t__ SCYC_EN ; 
 scalar_t__ SCYC_SWP ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC7(struct vme_master_resource *image,
	unsigned int mask, unsigned int compare, unsigned int swap,
	loff_t offset)
{
	u32 result;
	uintptr_t pci_addr;
	struct ca91cx42_driver *bridge;
	struct device *dev;

	bridge = image->parent->driver_priv;
	dev = image->parent->parent;

	/* Find the PCI address that maps to the desired VME address */

	/* Locking as we can only do one of these at a time */
	FUNC3(&bridge->vme_rmw);

	/* Lock image */
	FUNC5(&image->lock);

	pci_addr = (uintptr_t)image->kern_base + offset;

	/* Address must be 4-byte aligned */
	if (pci_addr & 0x3) {
		FUNC0(dev, "RMW Address not 4-byte aligned\n");
		result = -EINVAL;
		goto out;
	}

	/* Ensure RMW Disabled whilst configuring */
	FUNC2(0, bridge->base + SCYC_CTL);

	/* Configure registers */
	FUNC2(mask, bridge->base + SCYC_EN);
	FUNC2(compare, bridge->base + SCYC_CMP);
	FUNC2(swap, bridge->base + SCYC_SWP);
	FUNC2(pci_addr, bridge->base + SCYC_ADDR);

	/* Enable RMW */
	FUNC2(CA91CX42_SCYC_CTL_CYC_RMW, bridge->base + SCYC_CTL);

	/* Kick process off with a read to the required address. */
	result = FUNC1(image->kern_base + offset);

	/* Disable RMW */
	FUNC2(0, bridge->base + SCYC_CTL);

out:
	FUNC6(&image->lock);

	FUNC4(&bridge->vme_rmw);

	return result;
}