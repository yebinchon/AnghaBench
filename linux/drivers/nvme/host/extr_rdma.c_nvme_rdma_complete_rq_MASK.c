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
struct request {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dma; } ;
struct nvme_rdma_request {TYPE_2__ sqe; struct nvme_rdma_queue* queue; } ;
struct nvme_rdma_queue {TYPE_1__* device; } ;
struct nvme_command {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {struct ib_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct nvme_rdma_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_rdma_queue*,struct request*) ; 

__attribute__((used)) static void FUNC4(struct request *rq)
{
	struct nvme_rdma_request *req = FUNC0(rq);
	struct nvme_rdma_queue *queue = req->queue;
	struct ib_device *ibdev = queue->device->dev;

	FUNC3(queue, rq);
	FUNC1(ibdev, req->sqe.dma, sizeof(struct nvme_command),
			    DMA_TO_DEVICE);
	FUNC2(rq);
}