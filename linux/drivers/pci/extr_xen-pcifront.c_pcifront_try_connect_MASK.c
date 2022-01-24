#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcifront_device {TYPE_1__* xdev; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_4__ {int /*<<< orphan*/  otherend; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EEXIST ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  XenbusStateConnected ; 
 scalar_t__ XenbusStateInitialised ; 
 int FUNC0 (struct pcifront_device*) ; 
 int FUNC1 (struct pcifront_device*,unsigned int,unsigned int) ; 
 int FUNC2 (char*,int,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pcifront_device *pdev)
{
	int err = -EFAULT;
	int i, num_roots, len;
	char str[64];
	unsigned int domain, bus;


	/* Only connect once */
	if (FUNC6(pdev->xdev->nodename) !=
	    XenbusStateInitialised)
		goto out;

	err = FUNC0(pdev);
	if (err && err != -EEXIST) {
		FUNC5(pdev->xdev, err,
				 "Error setting up PCI Frontend");
		goto out;
	}

	err = FUNC7(XBT_NIL, pdev->xdev->otherend,
			   "root_num", "%d", &num_roots);
	if (err == -ENOENT) {
		FUNC4(pdev->xdev, err,
				 "No PCI Roots found, trying 0000:00");
		err = FUNC1(pdev, 0, 0);
		if (err) {
			FUNC5(pdev->xdev, err,
					 "Error scanning PCI root 0000:00");
			goto out;
		}
		num_roots = 0;
	} else if (err != 1) {
		if (err == 0)
			err = -EINVAL;
		FUNC5(pdev->xdev, err,
				 "Error reading number of PCI roots");
		goto out;
	}

	for (i = 0; i < num_roots; i++) {
		len = FUNC2(str, sizeof(str), "root-%d", i);
		if (FUNC3(len >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}

		err = FUNC7(XBT_NIL, pdev->xdev->otherend, str,
				   "%x:%x", &domain, &bus);
		if (err != 2) {
			if (err >= 0)
				err = -EINVAL;
			FUNC5(pdev->xdev, err,
					 "Error reading PCI root %d", i);
			goto out;
		}

		err = FUNC1(pdev, domain, bus);
		if (err) {
			FUNC5(pdev->xdev, err,
					 "Error scanning PCI root %04x:%02x",
					 domain, bus);
			goto out;
		}
	}

	err = FUNC8(pdev->xdev, XenbusStateConnected);

out:
	return err;
}