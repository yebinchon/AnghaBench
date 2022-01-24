#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct nvme_queue {int q_depth; int /*<<< orphan*/  cq_dma_addr; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  admin_q; } ;
struct nvme_dev {TYPE_2__ ctrl; } ;
struct TYPE_3__ {void* irq_vector; void* cq_flags; void* qsize; void* cqid; int /*<<< orphan*/  prp1; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ create_cq; } ;
typedef  int s16 ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  NVMEQ_POLLED ; 
 int NVME_CQ_IRQ_ENABLED ; 
 int NVME_QUEUE_PHYS_CONTIG ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nvme_admin_create_cq ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nvme_command*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct nvme_dev *dev, u16 qid,
		struct nvme_queue *nvmeq, s16 vector)
{
	struct nvme_command c;
	int flags = NVME_QUEUE_PHYS_CONTIG;

	if (!FUNC4(NVMEQ_POLLED, &nvmeq->flags))
		flags |= NVME_CQ_IRQ_ENABLED;

	/*
	 * Note: we (ab)use the fact that the prp fields survive if no data
	 * is attached to the request.
	 */
	FUNC2(&c, 0, sizeof(c));
	c.create_cq.opcode = nvme_admin_create_cq;
	c.create_cq.prp1 = FUNC1(nvmeq->cq_dma_addr);
	c.create_cq.cqid = FUNC0(qid);
	c.create_cq.qsize = FUNC0(nvmeq->q_depth - 1);
	c.create_cq.cq_flags = FUNC0(flags);
	c.create_cq.irq_vector = FUNC0(vector);

	return FUNC3(dev->ctrl.admin_q, &c, NULL, 0);
}