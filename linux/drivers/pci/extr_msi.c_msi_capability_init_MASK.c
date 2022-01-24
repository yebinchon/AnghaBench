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
struct pci_dev {int msi_enabled; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  multi_cap; } ;
struct msi_desc {int /*<<< orphan*/  irq; int /*<<< orphan*/  list; TYPE_1__ msi_attrib; } ;
struct irq_affinity {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msi_desc*,unsigned int,unsigned int) ; 
 struct msi_desc* FUNC5 (struct pci_dev*,int,struct irq_affinity*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int FUNC9 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int FUNC11 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC12(struct pci_dev *dev, int nvec,
			       struct irq_affinity *affd)
{
	struct msi_desc *entry;
	int ret;
	unsigned mask;

	FUNC8(dev, 0);	/* Disable MSI during set up */

	entry = FUNC5(dev, nvec, affd);
	if (!entry)
		return -ENOMEM;

	/* All MSIs are unmasked by default; mask them all */
	mask = FUNC3(entry->msi_attrib.multi_cap);
	FUNC4(entry, mask, mask);

	FUNC2(&entry->list, FUNC0(&dev->dev));

	/* Configure MSI capability structure */
	ret = FUNC9(dev, nvec, PCI_CAP_ID_MSI);
	if (ret) {
		FUNC4(entry, mask, ~mask);
		FUNC1(dev);
		return ret;
	}

	ret = FUNC6(dev);
	if (ret) {
		FUNC4(entry, mask, ~mask);
		FUNC1(dev);
		return ret;
	}

	ret = FUNC11(dev);
	if (ret) {
		FUNC4(entry, mask, ~mask);
		FUNC1(dev);
		return ret;
	}

	/* Set MSI enabled bits	*/
	FUNC7(dev, 0);
	FUNC8(dev, 1);
	dev->msi_enabled = 1;

	FUNC10(dev);
	dev->irq = entry->irq;
	return 0;
}