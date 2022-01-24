#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcifront_device {TYPE_1__* xdev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  otherend; int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int XenbusStateClosing ; 
 scalar_t__ XenbusStateConnected ; 
 int /*<<< orphan*/  XenbusStateReconfiguring ; 
 int /*<<< orphan*/  XenbusStateUnknown ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (char*,int,char*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct pcifront_device *pdev)
{
	int err = 0;
	int i, num_devs;
	unsigned int domain, bus, slot, func;
	struct pci_dev *pci_dev;
	char str[64];

	if (FUNC10(pdev->xdev->nodename) !=
	    XenbusStateConnected)
		goto out;

	err = FUNC12(XBT_NIL, pdev->xdev->otherend, "num_devs", "%d",
			   &num_devs);
	if (err != 1) {
		if (err >= 0)
			err = -EINVAL;
		FUNC9(pdev->xdev, err,
				 "Error reading number of PCI devices");
		goto out;
	}

	/* Find devices being detached and remove them. */
	for (i = 0; i < num_devs; i++) {
		int l, state;
		l = FUNC7(str, sizeof(str), "state-%d", i);
		if (FUNC8(l >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}
		state = FUNC11(pdev->xdev->otherend, str,
					     XenbusStateUnknown);

		if (state != XenbusStateClosing)
			continue;

		/* Remove device. */
		l = FUNC7(str, sizeof(str), "vdev-%d", i);
		if (FUNC8(l >= (sizeof(str) - 1))) {
			err = -ENOMEM;
			goto out;
		}
		err = FUNC12(XBT_NIL, pdev->xdev->otherend, str,
				   "%x:%x:%x.%x", &domain, &bus, &slot, &func);
		if (err != 4) {
			if (err >= 0)
				err = -EINVAL;
			FUNC9(pdev->xdev, err,
					 "Error reading PCI device %d", i);
			goto out;
		}

		pci_dev = FUNC3(domain, bus,
				FUNC0(slot, func));
		if (!pci_dev) {
			FUNC1(&pdev->xdev->dev,
				"Cannot get PCI device %04x:%02x:%02x.%d\n",
				domain, bus, slot, func);
			continue;
		}
		FUNC4();
		FUNC5(pci_dev);
		FUNC2(pci_dev);
		FUNC6();

		FUNC1(&pdev->xdev->dev,
			"PCI device %04x:%02x:%02x.%d removed.\n",
			domain, bus, slot, func);
	}

	err = FUNC13(pdev->xdev, XenbusStateReconfiguring);

out:
	return err;
}