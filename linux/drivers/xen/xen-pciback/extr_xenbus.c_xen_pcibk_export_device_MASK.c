#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xen_pcibk_device {TYPE_1__* xdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  otherend_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC3 (struct xen_pcibk_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct xen_pcibk_device*,struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xen_pcibk_publish_pci_dev ; 
 scalar_t__ FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,char*,int,int,int,int) ; 

__attribute__((used)) static int FUNC9(struct xen_pcibk_device *pdev,
				 int domain, int bus, int slot, int func,
				 int devid)
{
	struct pci_dev *dev;
	int err = 0;

	FUNC0(&pdev->xdev->dev, "exporting dom %x bus %x slot %x func %x\n",
		domain, bus, slot, func);

	dev = FUNC3(pdev, domain, bus, slot, func);
	if (!dev) {
		err = -EINVAL;
		FUNC8(pdev->xdev, err,
				 "Couldn't locate PCI device "
				 "(%04x:%02x:%02x.%d)! "
				 "perhaps already in-use?",
				 domain, bus, slot, func);
		goto out;
	}

	err = FUNC5(pdev, dev, devid,
				    xen_pcibk_publish_pci_dev);
	if (err)
		goto out;

	FUNC2(&dev->dev, "registering for %d\n", pdev->xdev->otherend_id);
	if (FUNC6(dev,
					     pdev->xdev->otherend_id) != 0) {
		FUNC1(&dev->dev, "Stealing ownership from dom%d.\n",
			FUNC4(dev));
		FUNC7(dev);
		FUNC6(dev, pdev->xdev->otherend_id);
	}

	/* TODO: It'd be nice to export a bridge and have all of its children
	 * get exported with it. This may be best done in xend (which will
	 * have to calculate resource usage anyway) but we probably want to
	 * put something in here to ensure that if a bridge gets given to a
	 * driver domain, that all devices under that bridge are not given
	 * to other driver domains (as he who controls the bridge can disable
	 * it and stop the other devices from working).
	 */
out:
	return err;
}