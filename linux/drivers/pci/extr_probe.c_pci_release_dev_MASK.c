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
struct pci_dev {int /*<<< orphan*/  dma_alias_mask; struct pci_dev* driver_override; int /*<<< orphan*/  bus; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (struct device*) ; 

__attribute__((used)) static void FUNC7(struct device *dev)
{
	struct pci_dev *pci_dev;

	pci_dev = FUNC6(dev);
	FUNC3(pci_dev);
	FUNC4(pci_dev);
	FUNC5(pci_dev);
	FUNC2(pci_dev->bus);
	FUNC1(pci_dev->driver_override);
	FUNC0(pci_dev->dma_alias_mask);
	FUNC1(pci_dev);
}