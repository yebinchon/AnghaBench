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
 scalar_t__ PCI_MSIX_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct pci_dev *dev, u16 clear, u16 set)
{
	u16 ctrl;

	FUNC0(dev, dev->msix_cap + PCI_MSIX_FLAGS, &ctrl);
	ctrl &= ~clear;
	ctrl |= set;
	FUNC1(dev, dev->msix_cap + PCI_MSIX_FLAGS, ctrl);
}