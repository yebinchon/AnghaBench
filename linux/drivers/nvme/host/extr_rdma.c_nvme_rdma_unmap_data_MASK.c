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
struct TYPE_3__ {int /*<<< orphan*/  sgl; } ;
struct nvme_rdma_request {TYPE_1__ sg_table; int /*<<< orphan*/  nents; int /*<<< orphan*/ * mr; } ;
struct nvme_rdma_queue {TYPE_2__* qp; struct nvme_rdma_device* device; } ;
struct nvme_rdma_device {struct ib_device* dev; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rdma_mrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 struct nvme_rdma_request* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int /*<<< orphan*/  FUNC5 (struct request*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct nvme_rdma_queue *queue,
		struct request *rq)
{
	struct nvme_rdma_request *req = FUNC0(rq);
	struct nvme_rdma_device *dev = queue->device;
	struct ib_device *ibdev = dev->dev;

	if (!FUNC1(rq))
		return;

	if (req->mr) {
		FUNC3(queue->qp, &queue->qp->rdma_mrs, req->mr);
		req->mr = NULL;
	}

	FUNC2(ibdev, req->sg_table.sgl, req->nents, FUNC5(rq));

	FUNC4(rq);
	FUNC6(&req->sg_table, SG_CHUNK_SIZE);
}