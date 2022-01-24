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
struct pci_dev {int /*<<< orphan*/  dev_flags; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  PCI_DEV_FLAGS_ACS_ENABLED_QUIRK ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	if (!FUNC3(dev))
		return -ENOTTY;

	if (FUNC1(dev)) {
		FUNC4(dev, "Failed to enable Intel PCH ACS quirk\n");
		return 0;
	}

	FUNC2(dev);

	dev->dev_flags |= PCI_DEV_FLAGS_ACS_ENABLED_QUIRK;

	FUNC0(dev, "Intel PCH root port ACS workaround enabled\n");

	return 0;
}