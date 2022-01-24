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
struct nvme_queue {int /*<<< orphan*/  flags; int /*<<< orphan*/  q_db; } ;
struct TYPE_2__ {int quirks; int /*<<< orphan*/  device; } ;
struct nvme_dev {int cmb_use_sqes; int q_depth; int num_vecs; int max_qid; int* io_queues; int online_queues; TYPE_1__ ctrl; int /*<<< orphan*/  dbs; int /*<<< orphan*/  dev; struct nvme_queue* queues; } ;
struct nvme_command {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 size_t HCTX_TYPE_DEFAULT ; 
 size_t HCTX_TYPE_POLL ; 
 size_t HCTX_TYPE_READ ; 
 int /*<<< orphan*/  NVMEQ_ENABLED ; 
 int NVME_QUIRK_SHARED_TAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int FUNC5 (struct nvme_dev*,int,int) ; 
 int FUNC6 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_dev*) ; 
 int FUNC8 (struct nvme_dev*,unsigned long) ; 
 int FUNC9 (TYPE_1__*,int*) ; 
 int FUNC10 (struct nvme_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ,struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct nvme_queue*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct nvme_dev *dev)
{
	struct nvme_queue *adminq = &dev->queues[0];
	struct pci_dev *pdev = FUNC16(dev->dev);
	int result, nr_io_queues;
	unsigned long size;

	nr_io_queues = FUNC4();

	/*
	 * If tags are shared with admin queue (Apple bug), then
	 * make sure we only use one IO queue.
	 */
	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
		nr_io_queues = 1;

	result = FUNC9(&dev->ctrl, &nr_io_queues);
	if (result < 0)
		return result;

	if (nr_io_queues == 0)
		return 0;
	
	FUNC0(NVMEQ_ENABLED, &adminq->flags);

	if (dev->cmb_use_sqes) {
		result = FUNC5(dev, nr_io_queues,
				sizeof(struct nvme_command));
		if (result > 0)
			dev->q_depth = result;
		else
			dev->cmb_use_sqes = false;
	}

	do {
		size = FUNC1(dev, nr_io_queues);
		result = FUNC8(dev, size);
		if (!result)
			break;
		if (!--nr_io_queues)
			return -ENOMEM;
	} while (1);
	adminq->q_db = dev->dbs;

 retry:
	/* Deregister the admin queue's interrupt */
	FUNC12(pdev, 0, adminq);

	/*
	 * If we enable msix early due to not intx, disable it again before
	 * setting up the full range we need.
	 */
	FUNC13(pdev);

	result = FUNC10(dev, nr_io_queues);
	if (result <= 0)
		return -EIO;

	dev->num_vecs = result;
	result = FUNC3(result - 1, 1);
	dev->max_qid = result + dev->io_queues[HCTX_TYPE_POLL];

	/*
	 * Should investigate if there's a performance win from allocating
	 * more queues than interrupt vectors; it might allow the submission
	 * path to scale better, even if the receive path is limited by the
	 * number of interrupts.
	 */
	result = FUNC14(adminq);
	if (result)
		return result;
	FUNC15(NVMEQ_ENABLED, &adminq->flags);

	result = FUNC6(dev);
	if (result || dev->online_queues < 2)
		return result;

	if (dev->online_queues - 1 < dev->max_qid) {
		nr_io_queues = dev->online_queues - 1;
		FUNC7(dev);
		FUNC11(dev);
		goto retry;
	}
	FUNC2(dev->ctrl.device, "%d/%d/%d default/read/poll queues\n",
					dev->io_queues[HCTX_TYPE_DEFAULT],
					dev->io_queues[HCTX_TYPE_READ],
					dev->io_queues[HCTX_TYPE_POLL]);
	return 0;
}