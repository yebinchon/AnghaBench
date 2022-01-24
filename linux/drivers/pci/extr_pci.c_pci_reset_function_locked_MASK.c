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
struct pci_dev {int /*<<< orphan*/  reset_fn; } ;

/* Variables and functions */
 int ENOTTY ; 
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

int FUNC3(struct pci_dev *dev)
{
	int rc;

	if (!dev->reset_fn)
		return -ENOTTY;

	FUNC2(dev);

	rc = FUNC0(dev);

	FUNC1(dev);

	return rc;
}