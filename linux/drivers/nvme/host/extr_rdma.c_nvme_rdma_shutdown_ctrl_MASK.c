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
struct TYPE_3__ {int /*<<< orphan*/  admin_q; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int /*<<< orphan*/  reconnect_work; int /*<<< orphan*/  err_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct nvme_rdma_ctrl *ctrl, bool shutdown)
{
	FUNC2(&ctrl->err_work);
	FUNC1(&ctrl->reconnect_work);

	FUNC5(ctrl, shutdown);
	FUNC0(ctrl->ctrl.admin_q);
	if (shutdown)
		FUNC6(&ctrl->ctrl);
	else
		FUNC3(&ctrl->ctrl);
	FUNC4(ctrl, shutdown);
}