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
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ reset_fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_reset ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *dev)
{
	int retval;

	FUNC3(dev);
	FUNC1(dev);

	if (dev->reset_fn) {
		retval = FUNC0(&dev->dev, &dev_attr_reset);
		if (retval)
			goto error;
	}
	return 0;

error:
	FUNC2(dev);
	FUNC4(dev);
	return retval;
}