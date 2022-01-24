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
struct nvme_rdma_queue {int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; struct nvme_rdma_queue* queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_RDMA_Q_ALLOCATED ; 
 int /*<<< orphan*/  NVME_RDMA_Q_LIVE ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_rdma_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct nvme_rdma_queue*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nvme_rdma_ctrl *ctrl, int idx)
{
	struct nvme_rdma_queue *queue = &ctrl->queues[idx];
	bool poll = FUNC2(queue);
	int ret;

	if (idx)
		ret = FUNC4(&ctrl->ctrl, idx, poll);
	else
		ret = FUNC3(&ctrl->ctrl);

	if (!ret) {
		FUNC5(NVME_RDMA_Q_LIVE, &queue->flags);
	} else {
		if (FUNC6(NVME_RDMA_Q_ALLOCATED, &queue->flags))
			FUNC0(queue);
		FUNC1(ctrl->ctrl.device,
			"failed to connect queue: %d ret=%d\n", idx, ret);
	}
	return ret;
}