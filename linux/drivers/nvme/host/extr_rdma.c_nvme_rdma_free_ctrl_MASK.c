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
struct nvme_rdma_ctrl {struct nvme_rdma_ctrl* queues; int /*<<< orphan*/  list; } ;
struct nvme_ctrl {int /*<<< orphan*/  opts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvme_rdma_ctrl*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_rdma_ctrl_mutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct nvme_rdma_ctrl* FUNC6 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC7(struct nvme_ctrl *nctrl)
{
	struct nvme_rdma_ctrl *ctrl = FUNC6(nctrl);

	if (FUNC2(&ctrl->list))
		goto free_ctrl;

	FUNC3(&nvme_rdma_ctrl_mutex);
	FUNC1(&ctrl->list);
	FUNC4(&nvme_rdma_ctrl_mutex);

	FUNC5(nctrl->opts);
free_ctrl:
	FUNC0(ctrl->queues);
	FUNC0(ctrl);
}