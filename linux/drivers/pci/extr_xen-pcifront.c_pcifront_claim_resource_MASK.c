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
struct resource {scalar_t__ flags; scalar_t__ start; int /*<<< orphan*/  parent; } ;
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {struct resource* resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int PCI_NUM_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *dev, void *data)
{
	struct pcifront_device *pdev = data;
	int i;
	struct resource *r;

	for (i = 0; i < PCI_NUM_RESOURCES; i++) {
		r = &dev->resource[i];

		if (!r->parent && r->start && r->flags) {
			FUNC1(&pdev->xdev->dev, "claiming resource %s/%d\n",
				FUNC3(dev), i);
			if (FUNC2(dev, i)) {
				FUNC0(&pdev->xdev->dev, "Could not claim resource %s/%d! "
					"Device offline. Try using e820_host=1 in the guest config.\n",
					FUNC3(dev), i);
			}
		}
	}

	return 0;
}