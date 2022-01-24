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
struct pci_dev {int runtime_d3cold; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PCI_D3cold ; 
 scalar_t__ PCI_POWER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC4 (struct pci_dev*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 

int FUNC6(struct pci_dev *dev)
{
	pci_power_t target_state;
	int error;

	target_state = FUNC5(dev, FUNC1(&dev->dev));
	if (target_state == PCI_POWER_ERROR)
		return -EIO;

	dev->runtime_d3cold = target_state == PCI_D3cold;

	FUNC0(dev, target_state, FUNC2(dev));

	error = FUNC4(dev, target_state);

	if (error) {
		FUNC3(dev, target_state, false);
		dev->runtime_d3cold = false;
	}

	return error;
}