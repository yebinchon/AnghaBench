#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvmet_rdma_rsp {int /*<<< orphan*/  free_list; } ;
struct nvmet_rdma_queue {int recv_queue_size; struct nvmet_rdma_rsp* rsps; struct nvmet_rdma_device* dev; } ;
struct nvmet_rdma_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_rdma_device*,struct nvmet_rdma_rsp*) ; 

__attribute__((used)) static void FUNC3(struct nvmet_rdma_queue *queue)
{
	struct nvmet_rdma_device *ndev = queue->dev;
	int i, nr_rsps = queue->recv_queue_size * 2;

	for (i = 0; i < nr_rsps; i++) {
		struct nvmet_rdma_rsp *rsp = &queue->rsps[i];

		FUNC1(&rsp->free_list);
		FUNC2(ndev, rsp);
	}
	FUNC0(queue->rsps);
}