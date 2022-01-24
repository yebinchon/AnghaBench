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
struct pci_dev {int /*<<< orphan*/  is_physfn; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int) ; 

int FUNC5(struct pci_dev *dev, int nr_virtfn)
{
	int rc;

	FUNC0();

	if (!dev->is_physfn)
		return -ENODEV;

	if (FUNC1(dev)) {
		FUNC2(dev, "Cannot modify SR-IOV while VFs are assigned\n");
		return -EPERM;
	}

	if (nr_virtfn == 0) {
		FUNC3(dev);
		return 0;
	}

	rc = FUNC4(dev, nr_virtfn);
	if (rc < 0)
		return rc;

	return nr_virtfn;
}