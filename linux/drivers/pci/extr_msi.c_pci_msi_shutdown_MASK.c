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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  irq; scalar_t__ msi_enabled; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_irq; int /*<<< orphan*/  multi_cap; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msi_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msi_desc* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  pci_msi_enable ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *dev)
{
	struct msi_desc *desc;
	u32 mask;

	if (!pci_msi_enable || !dev || !dev->msi_enabled)
		return;

	FUNC0(FUNC4(FUNC2(&dev->dev)));
	desc = FUNC3(dev);

	FUNC7(dev, 0);
	FUNC6(dev, 1);
	dev->msi_enabled = 0;

	/* Return the device with MSI unmasked as initial states */
	mask = FUNC5(desc->msi_attrib.multi_cap);
	/* Keep cached state to be restored */
	FUNC1(desc, mask, ~mask);

	/* Restore dev->irq to its default pin-assertion IRQ */
	dev->irq = desc->msi_attrib.default_irq;
	FUNC8(dev);
}