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
struct pci_dev {int state_saved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 

void FUNC14(struct pci_dev *dev)
{
	if (!dev->state_saved)
		return;

	/*
	 * Restore max latencies (in the LTR capability) before enabling
	 * LTR itself (in the PCIe capability).
	 */
	FUNC6(dev);

	FUNC9(dev);
	FUNC8(dev);
	FUNC11(dev);
	FUNC2(dev);
	FUNC13(dev);
	FUNC12(dev);
	FUNC4(dev);

	FUNC0(dev);

	FUNC3(dev);

	FUNC10(dev);
	FUNC7(dev);

	/* Restore ACS and IOV configuration state */
	FUNC1(dev);
	FUNC5(dev);

	dev->state_saved = false;
}