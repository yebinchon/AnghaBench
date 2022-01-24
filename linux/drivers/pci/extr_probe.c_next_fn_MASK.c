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
struct pci_dev {scalar_t__ multifunction; } ;
struct pci_bus {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_ARI_CAP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_ARI ; 
 scalar_t__ FUNC1 (struct pci_bus*) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned FUNC4(struct pci_bus *bus, struct pci_dev *dev, unsigned fn)
{
	int pos;
	u16 cap = 0;
	unsigned next_fn;

	if (FUNC1(bus)) {
		if (!dev)
			return 0;
		pos = FUNC2(dev, PCI_EXT_CAP_ID_ARI);
		if (!pos)
			return 0;

		FUNC3(dev, pos + PCI_ARI_CAP, &cap);
		next_fn = FUNC0(cap);
		if (next_fn <= fn)
			return 0;	/* protect against malformed list */

		return next_fn;
	}

	/* dev may be NULL for non-contiguous multifunction devices */
	if (!dev || dev->multifunction)
		return (fn + 1) % 8;

	return 0;
}