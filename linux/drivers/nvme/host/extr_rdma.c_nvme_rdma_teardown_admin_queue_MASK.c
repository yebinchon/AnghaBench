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
struct TYPE_2__ {int /*<<< orphan*/  admin_q; scalar_t__ admin_tagset; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; int /*<<< orphan*/ * queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nvme_rdma_ctrl *ctrl,
		bool remove)
{
	FUNC0(ctrl->ctrl.admin_q);
	FUNC5(&ctrl->queues[0]);
	if (ctrl->ctrl.admin_tagset) {
		FUNC1(ctrl->ctrl.admin_tagset,
			nvme_cancel_request, &ctrl->ctrl);
		FUNC2(ctrl->ctrl.admin_tagset);
	}
	if (remove)
		FUNC3(ctrl->ctrl.admin_q);
	FUNC4(ctrl, remove);
}