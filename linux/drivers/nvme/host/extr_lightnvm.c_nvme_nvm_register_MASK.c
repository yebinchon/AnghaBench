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
struct request_queue {int dummy; } ;
struct nvme_ns {int lba_shift; struct nvm_dev* ndev; TYPE_1__* ctrl; int /*<<< orphan*/  ext; int /*<<< orphan*/  ms; struct request_queue* queue; } ;
struct nvm_geo {int csecs; int /*<<< orphan*/  mdts; int /*<<< orphan*/  ext; int /*<<< orphan*/  sos; } ;
struct nvm_dev {struct nvme_ns* private_data; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; struct request_queue* q; struct nvm_geo geo; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_hw_sectors; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISK_NAME_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct nvm_dev* FUNC2 (int) ; 
 int FUNC3 (struct nvm_dev*) ; 
 int /*<<< orphan*/  nvme_nvm_dev_ops ; 

int FUNC4(struct nvme_ns *ns, char *disk_name, int node)
{
	struct request_queue *q = ns->queue;
	struct nvm_dev *dev;
	struct nvm_geo *geo;

	FUNC0();

	dev = FUNC2(node);
	if (!dev)
		return -ENOMEM;

	/* Note that csecs and sos will be overridden if it is a 1.2 drive. */
	geo = &dev->geo;
	geo->csecs = 1 << ns->lba_shift;
	geo->sos = ns->ms;
	geo->ext = ns->ext;
	geo->mdts = ns->ctrl->max_hw_sectors;

	dev->q = q;
	FUNC1(dev->name, disk_name, DISK_NAME_LEN);
	dev->ops = &nvme_nvm_dev_ops;
	dev->private_data = ns;
	ns->ndev = dev;

	return FUNC3(dev);
}