#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int queue_count; scalar_t__ tagset; } ;
struct nvme_rdma_ctrl {TYPE_1__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_rdma_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct nvme_rdma_ctrl *ctrl,
		bool remove)
{
	if (ctrl->ctrl.queue_count > 1) {
		FUNC5(&ctrl->ctrl);
		FUNC3(ctrl);
		if (ctrl->ctrl.tagset) {
			FUNC0(ctrl->ctrl.tagset,
				nvme_cancel_request, &ctrl->ctrl);
			FUNC1(ctrl->ctrl.tagset);
		}
		if (remove)
			FUNC4(&ctrl->ctrl);
		FUNC2(ctrl, remove);
	}
}