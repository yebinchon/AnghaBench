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
struct pci_devres {int region_mask; int /*<<< orphan*/  pinned; scalar_t__ enabled; int /*<<< orphan*/  orig_intx; scalar_t__ restore_intx; scalar_t__ mwi; } ;
struct pci_dev {scalar_t__ msix_enabled; scalar_t__ msi_enabled; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DEVICE_COUNT_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *gendev, void *res)
{
	struct pci_dev *dev = FUNC6(gendev);
	struct pci_devres *this = res;
	int i;

	if (dev->msi_enabled)
		FUNC2(dev);
	if (dev->msix_enabled)
		FUNC3(dev);

	for (i = 0; i < DEVICE_COUNT_RESOURCE; i++)
		if (this->region_mask & (1 << i))
			FUNC5(dev, i);

	if (this->mwi)
		FUNC0(dev);

	if (this->restore_intx)
		FUNC4(dev, this->orig_intx);

	if (this->enabled && !this->pinned)
		FUNC1(dev);
}