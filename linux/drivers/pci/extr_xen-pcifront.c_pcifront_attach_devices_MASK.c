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
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  XenbusStateConnected ; 
 scalar_t__ XenbusStateReconfiguring ; 
 int FUNC0 (struct pcifront_device*,unsigned int,unsigned int) ; 
 int FUNC1 (char*,int,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pcifront_device *pdev)
{
	int err = -EFAULT;
	int i, num_roots, len;
	unsigned int domain, bus;
	char str[64];

	if (FUNC5(pdev->xdev->nodename) !=
	    XenbusStateReconfiguring)
		goto out;

	err = FUNC6(XBT_NIL, pdev->xdev->otherend,
			   "root_num", "%d", &num_roots);
	if (err == -ENOENT) {
		FUNC3(pdev->xdev, err,
				 "No PCI Roots found, trying 0000:00");
		err = FUNC0(pdev, 0, 0);
		if (err) {
			FUNC4(pdev->xdev, err,
					 "Error scanning PCI root 0000:00");
			goto out;
		}
		num_roots = 0;
	} else if (err != 1) {
		if (err == 0)
			err = -EINVAL;
		FUNC4(pdev->xdev, err,
				 "Error reading number of PCI roots");
		goto out;
	}

	for (i = 0; i < num_roots; i++) {
		len = FUNC1(str, sizeof(str), "root-%d", i);
		if (FUNC2(len >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}

		err = FUNC6(XBT_NIL, pdev->xdev->otherend, str,
				   "%x:%x", &domain, &bus);
		if (err != 2) {
			if (err >= 0)
				err = -EINVAL;
			FUNC4(pdev->xdev, err,
					 "Error reading PCI root %d", i);
			goto out;
		}

		err = FUNC0(pdev, domain, bus);
		if (err) {
			FUNC4(pdev->xdev, err,
					 "Error scanning PCI root %04x:%02x",
					 domain, bus);
			goto out;
		}
	}

	FUNC7(pdev->xdev, XenbusStateConnected);

out:
	return err;
}