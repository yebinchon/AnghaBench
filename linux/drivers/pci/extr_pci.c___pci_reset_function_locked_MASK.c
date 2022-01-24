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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENOTTY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*) ; 

int FUNC8(struct pci_dev *dev)
{
	int rc;

	FUNC0();

	/*
	 * A reset method returns -ENOTTY if it doesn't support this device
	 * and we should try the next method.
	 *
	 * If it returns 0 (success), we're finished.  If it returns any
	 * other error, we're also finished: this indicates that further
	 * reset mechanisms might be broken on the device.
	 */
	rc = FUNC3(dev, 0);
	if (rc != -ENOTTY)
		return rc;
	if (FUNC7(dev)) {
		rc = FUNC6(dev);
		if (rc != -ENOTTY)
			return rc;
	}
	rc = FUNC1(dev, 0);
	if (rc != -ENOTTY)
		return rc;
	rc = FUNC5(dev, 0);
	if (rc != -ENOTTY)
		return rc;
	rc = FUNC2(dev, 0);
	if (rc != -ENOTTY)
		return rc;
	return FUNC4(dev, 0);
}