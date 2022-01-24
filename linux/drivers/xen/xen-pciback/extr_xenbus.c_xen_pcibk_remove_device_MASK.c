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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct pci_dev* FUNC2 (struct xen_pcibk_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xen_pcibk_device*,struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct xen_pcibk_device *pdev,
				 int domain, int bus, int slot, int func)
{
	int err = 0;
	struct pci_dev *dev;

	FUNC1(&pdev->xdev->dev, "removing dom %x bus %x slot %x func %x\n",
		domain, bus, slot, func);

	dev = FUNC2(pdev, domain, bus, FUNC0(slot, func));
	if (!dev) {
		err = -EINVAL;
		FUNC1(&pdev->xdev->dev, "Couldn't locate PCI device "
			"(%04x:%02x:%02x.%d)! not owned by this domain\n",
			domain, bus, slot, func);
		goto out;
	}

	FUNC1(&dev->dev, "unregistering for %d\n", pdev->xdev->otherend_id);
	FUNC4(dev);

	/* N.B. This ends up calling pcistub_put_pci_dev which ends up
	 * doing the FLR. */
	FUNC3(pdev, dev, true /* use the lock. */);

out:
	return err;
}