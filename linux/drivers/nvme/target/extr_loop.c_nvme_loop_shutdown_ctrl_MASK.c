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
struct TYPE_4__ {int queue_count; scalar_t__ state; int /*<<< orphan*/  admin_q; } ;
struct nvme_loop_ctrl {int /*<<< orphan*/  admin_tag_set; TYPE_1__ ctrl; int /*<<< orphan*/  tag_set; } ;

/* Variables and functions */
 scalar_t__ NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_cancel_request ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_loop_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_loop_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(struct nvme_loop_ctrl *ctrl)
{
	if (ctrl->ctrl.queue_count > 1) {
		FUNC6(&ctrl->ctrl);
		FUNC1(&ctrl->tag_set,
					nvme_cancel_request, &ctrl->ctrl);
		FUNC2(&ctrl->tag_set);
		FUNC4(ctrl);
	}

	FUNC0(ctrl->ctrl.admin_q);
	if (ctrl->ctrl.state == NVME_CTRL_LIVE)
		FUNC5(&ctrl->ctrl);

	FUNC1(&ctrl->admin_tag_set,
				nvme_cancel_request, &ctrl->ctrl);
	FUNC2(&ctrl->admin_tag_set);
	FUNC3(ctrl);
}