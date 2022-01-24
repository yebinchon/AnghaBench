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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {scalar_t__ msix_cap; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PCI_MSIX_FLAGS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

int FUNC2(struct pci_dev *dev)
{
	u16 control;

	if (!dev->msix_cap)
		return -EINVAL;

	FUNC1(dev, dev->msix_cap + PCI_MSIX_FLAGS, &control);
	return FUNC0(control);
}