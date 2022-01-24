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
struct pci_dev {int dummy; } ;
struct nvmet_ns {int /*<<< orphan*/  device_path; scalar_t__ p2p_dev; TYPE_1__* bdev; int /*<<< orphan*/  use_p2pmem; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_ns*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(struct nvmet_ns *ns)
{
	int ret;
	struct pci_dev *p2p_dev;

	if (!ns->use_p2pmem)
		return 0;

	if (!ns->bdev) {
		FUNC5("peer-to-peer DMA is not supported by non-block device namespaces\n");
		return -EINVAL;
	}

	if (!FUNC0(ns->bdev->bd_queue)) {
		FUNC5("peer-to-peer DMA is not supported by the driver of %s\n",
		       ns->device_path);
		return -EINVAL;
	}

	if (ns->p2p_dev) {
		ret = FUNC3(ns->p2p_dev, FUNC1(ns), true);
		if (ret < 0)
			return -EINVAL;
	} else {
		/*
		 * Right now we just check that there is p2pmem available so
		 * we can report an error to the user right away if there
		 * is not. We'll find the actual device to use once we
		 * setup the controller when the port's device is available.
		 */

		p2p_dev = FUNC4(FUNC1(ns));
		if (!p2p_dev) {
			FUNC5("no peer-to-peer memory is available for %s\n",
			       ns->device_path);
			return -EINVAL;
		}

		FUNC2(p2p_dev);
	}

	return 0;
}