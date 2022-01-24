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
struct nvme_queue {int q_depth; int cq_phase; int qid; int /*<<< orphan*/  cq_dma_addr; scalar_t__ cqes; int /*<<< orphan*/ * q_db; scalar_t__ cq_head; int /*<<< orphan*/  cq_poll_lock; int /*<<< orphan*/  sq_lock; struct nvme_dev* dev; int /*<<< orphan*/  sqes; } ;
struct TYPE_2__ {int queue_count; } ;
struct nvme_dev {int db_stride; int /*<<< orphan*/  dev; TYPE_1__ ctrl; int /*<<< orphan*/ * dbs; int /*<<< orphan*/  io_sqes; struct nvme_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_queue*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVME_ADM_SQES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct nvme_dev*,struct nvme_queue*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nvme_dev *dev, int qid, int depth)
{
	struct nvme_queue *nvmeq = &dev->queues[qid];

	if (dev->ctrl.queue_count > qid)
		return 0;

	nvmeq->sqes = qid ? dev->io_sqes : NVME_ADM_SQES;
	nvmeq->q_depth = depth;
	nvmeq->cqes = FUNC1(dev->dev, FUNC0(nvmeq),
					 &nvmeq->cq_dma_addr, GFP_KERNEL);
	if (!nvmeq->cqes)
		goto free_nvmeq;

	if (FUNC3(dev, nvmeq, qid))
		goto free_cqdma;

	nvmeq->dev = dev;
	FUNC4(&nvmeq->sq_lock);
	FUNC4(&nvmeq->cq_poll_lock);
	nvmeq->cq_head = 0;
	nvmeq->cq_phase = 1;
	nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
	nvmeq->qid = qid;
	dev->ctrl.queue_count++;

	return 0;

 free_cqdma:
	FUNC2(dev->dev, FUNC0(nvmeq), (void *)nvmeq->cqes,
			  nvmeq->cq_dma_addr);
 free_nvmeq:
	return -ENOMEM;
}