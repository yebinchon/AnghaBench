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
struct nvme_rdma_queue {int /*<<< orphan*/  queue_size; int /*<<< orphan*/  rsp_ring; int /*<<< orphan*/  ib_cq; TYPE_1__* qp; struct nvme_rdma_device* device; int /*<<< orphan*/  flags; } ;
struct nvme_rdma_device {struct ib_device* dev; } ;
struct nvme_completion {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdma_mrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  NVME_RDMA_Q_TR_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_rdma_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nvme_rdma_queue *queue)
{
	struct nvme_rdma_device *dev;
	struct ib_device *ibdev;

	if (!FUNC5(NVME_RDMA_Q_TR_READY, &queue->flags))
		return;

	dev = queue->device;
	ibdev = dev->dev;

	FUNC2(queue->qp, &queue->qp->rdma_mrs);

	/*
	 * The cm_id object might have been destroyed during RDMA connection
	 * establishment error flow to avoid getting other cma events, thus
	 * the destruction of the QP shouldn't use rdma_cm API.
	 */
	FUNC0(queue->qp);
	FUNC1(queue->ib_cq);

	FUNC4(ibdev, queue->rsp_ring, queue->queue_size,
			sizeof(struct nvme_completion), DMA_FROM_DEVICE);

	FUNC3(dev);
}