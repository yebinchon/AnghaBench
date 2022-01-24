#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvme_iod {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * admin_q; TYPE_2__* admin_tagset; } ;
struct TYPE_6__ {int nr_hw_queues; int cmd_size; struct nvme_dev* driver_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  timeout; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/ * ops; } ;
struct nvme_dev {TYPE_1__ ctrl; TYPE_2__ admin_tagset; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMIN_TIMEOUT ; 
 int /*<<< orphan*/  BLK_MQ_F_NO_SCHED ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NVME_AQ_MQ_TAG_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_dev*) ; 
 int /*<<< orphan*/  nvme_mq_admin_ops ; 

__attribute__((used)) static int FUNC8(struct nvme_dev *dev)
{
	if (!dev->ctrl.admin_q) {
		dev->admin_tagset.ops = &nvme_mq_admin_ops;
		dev->admin_tagset.nr_hw_queues = 1;

		dev->admin_tagset.queue_depth = NVME_AQ_MQ_TAG_DEPTH;
		dev->admin_tagset.timeout = ADMIN_TIMEOUT;
		dev->admin_tagset.numa_node = FUNC6(dev->dev);
		dev->admin_tagset.cmd_size = sizeof(struct nvme_iod);
		dev->admin_tagset.flags = BLK_MQ_F_NO_SCHED;
		dev->admin_tagset.driver_data = dev;

		if (FUNC2(&dev->admin_tagset))
			return -ENOMEM;
		dev->ctrl.admin_tagset = &dev->admin_tagset;

		dev->ctrl.admin_q = FUNC4(&dev->admin_tagset);
		if (FUNC0(dev->ctrl.admin_q)) {
			FUNC3(&dev->admin_tagset);
			return -ENOMEM;
		}
		if (!FUNC1(dev->ctrl.admin_q)) {
			FUNC7(dev);
			dev->ctrl.admin_q = NULL;
			return -ENODEV;
		}
	} else
		FUNC5(dev->ctrl.admin_q);

	return 0;
}