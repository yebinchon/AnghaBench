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
struct xen_pcibk_device {int /*<<< orphan*/  dev_lock; TYPE_1__* xdev; } ;
typedef  int /*<<< orphan*/  state_str ;
typedef  int /*<<< orphan*/  dev_str ;
struct TYPE_3__ {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  XBT_NIL ; 
 scalar_t__ XenbusStateInitWait ; 
 int /*<<< orphan*/  XenbusStateInitialised ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct xen_pcibk_device*) ; 
 int FUNC6 (struct xen_pcibk_device*,int,int,int,int,int) ; 
 int /*<<< orphan*/  xen_pcibk_publish_pci_root ; 
 int FUNC7 (struct xen_pcibk_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char*,...) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int*,...) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct xen_pcibk_device *pdev)
{
	/* Get configuration from xend (if available now) */
	int domain, bus, slot, func;
	int err = 0;
	int i, num_devs;
	char dev_str[64];
	char state_str[64];

	FUNC1(&pdev->dev_lock);
	/* It's possible we could get the call to setup twice, so make sure
	 * we're not already connected.
	 */
	if (FUNC10(pdev->xdev->nodename) !=
	    XenbusStateInitWait)
		goto out;

	FUNC0(&pdev->xdev->dev, "getting be setup\n");

	err = FUNC11(XBT_NIL, pdev->xdev->nodename, "num_devs", "%d",
			   &num_devs);
	if (err != 1) {
		if (err >= 0)
			err = -EINVAL;
		FUNC8(pdev->xdev, err,
				 "Error reading number of devices");
		goto out;
	}

	for (i = 0; i < num_devs; i++) {
		int l = FUNC3(dev_str, sizeof(dev_str), "dev-%d", i);
		if (FUNC4(l >= (sizeof(dev_str) - 1))) {
			err = -ENOMEM;
			FUNC8(pdev->xdev, err,
					 "String overflow while reading "
					 "configuration");
			goto out;
		}

		err = FUNC11(XBT_NIL, pdev->xdev->nodename, dev_str,
				   "%x:%x:%x.%x", &domain, &bus, &slot, &func);
		if (err < 0) {
			FUNC8(pdev->xdev, err,
					 "Error reading device configuration");
			goto out;
		}
		if (err != 4) {
			err = -EINVAL;
			FUNC8(pdev->xdev, err,
					 "Error parsing pci device "
					 "configuration");
			goto out;
		}

		err = FUNC6(pdev, domain, bus, slot, func, i);
		if (err)
			goto out;

		/* Switch substate of this device. */
		l = FUNC3(state_str, sizeof(state_str), "state-%d", i);
		if (FUNC4(l >= (sizeof(state_str) - 1))) {
			err = -ENOMEM;
			FUNC8(pdev->xdev, err,
					 "String overflow while reading "
					 "configuration");
			goto out;
		}
		err = FUNC9(XBT_NIL, pdev->xdev->nodename, state_str,
				    "%d", XenbusStateInitialised);
		if (err) {
			FUNC8(pdev->xdev, err, "Error switching "
					 "substate of dev-%d\n", i);
			goto out;
		}
	}

	err = FUNC7(pdev, xen_pcibk_publish_pci_root);
	if (err) {
		FUNC8(pdev->xdev, err,
				 "Error while publish PCI root buses "
				 "for frontend");
		goto out;
	}

	err = FUNC12(pdev->xdev, XenbusStateInitialised);
	if (err)
		FUNC8(pdev->xdev, err,
				 "Error switching to initialised state!");

out:
	FUNC2(&pdev->dev_lock);
	if (!err)
		/* see if pcifront is already configured (if not, we'll wait) */
		FUNC5(pdev);
	return err;
}