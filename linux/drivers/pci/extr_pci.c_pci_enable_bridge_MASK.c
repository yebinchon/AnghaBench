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
struct pci_dev {int /*<<< orphan*/  is_busmaster; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,char*,int) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 struct pci_dev* FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	struct pci_dev *bridge;
	int retval;

	bridge = FUNC4(dev);
	if (bridge)
		FUNC5(bridge);

	if (FUNC2(dev)) {
		if (!dev->is_busmaster)
			FUNC3(dev);
		return;
	}

	retval = FUNC0(dev);
	if (retval)
		FUNC1(dev, "Error enabling bridge (%d), continuing\n",
			retval);
	FUNC3(dev);
}