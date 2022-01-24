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
struct nvmet_rdma_queue {int recv_queue_size; struct nvmet_rdma_rsp* rsps; int /*<<< orphan*/  free_rsps; struct nvmet_rdma_device* dev; } ;
struct nvmet_rdma_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvmet_rdma_rsp* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nvmet_rdma_device*,struct nvmet_rdma_rsp*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvmet_rdma_device*,struct nvmet_rdma_rsp*) ; 

__attribute__((used)) static int
FUNC6(struct nvmet_rdma_queue *queue)
{
	struct nvmet_rdma_device *ndev = queue->dev;
	int nr_rsps = queue->recv_queue_size * 2;
	int ret = -EINVAL, i;

	queue->rsps = FUNC0(nr_rsps, sizeof(struct nvmet_rdma_rsp),
			GFP_KERNEL);
	if (!queue->rsps)
		goto out;

	for (i = 0; i < nr_rsps; i++) {
		struct nvmet_rdma_rsp *rsp = &queue->rsps[i];

		ret = FUNC4(ndev, rsp);
		if (ret)
			goto out_free;

		FUNC2(&rsp->free_list, &queue->free_rsps);
	}

	return 0;

out_free:
	while (--i >= 0) {
		struct nvmet_rdma_rsp *rsp = &queue->rsps[i];

		FUNC3(&rsp->free_list);
		FUNC5(ndev, rsp);
	}
	FUNC1(queue->rsps);
out:
	return ret;
}