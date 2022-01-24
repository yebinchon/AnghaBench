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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct device {TYPE_1__ power; } ;
struct pci_dev {scalar_t__ current_state; struct device dev; } ;

/* Variables and functions */
 scalar_t__ PCI_D3cold ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct pci_dev *pci_dev)
{
	struct device *dev = &pci_dev->dev;

	if (!FUNC1(pci_dev))
		return;

	FUNC3(&dev->power.lock);

	if (FUNC2(dev) && pci_dev->current_state < PCI_D3cold)
		FUNC0(pci_dev, true);

	FUNC4(&dev->power.lock);
}