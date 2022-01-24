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
struct pci_dev {int dev_flags; } ;

/* Variables and functions */
 int PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 

__attribute__((used)) static void FUNC1(struct pci_dev *dev, int enable)
{
	if (!(dev->dev_flags & PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG))
		FUNC0(dev, enable);
}