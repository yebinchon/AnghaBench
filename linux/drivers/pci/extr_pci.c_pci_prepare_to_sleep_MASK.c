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
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ pci_power_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ PCI_POWER_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int) ; 
 int FUNC2 (struct pci_dev*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct pci_dev*,int) ; 

int FUNC4(struct pci_dev *dev)
{
	bool wakeup = FUNC0(&dev->dev);
	pci_power_t target_state = FUNC3(dev, wakeup);
	int error;

	if (target_state == PCI_POWER_ERROR)
		return -EIO;

	FUNC1(dev, target_state, wakeup);

	error = FUNC2(dev, target_state);

	if (error)
		FUNC1(dev, target_state, false);

	return error;
}