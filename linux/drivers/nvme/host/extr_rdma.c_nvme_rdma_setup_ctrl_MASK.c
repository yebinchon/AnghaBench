#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sgls; scalar_t__ sqsize; scalar_t__ maxcmd; int queue_count; scalar_t__ state; int /*<<< orphan*/  device; TYPE_1__* opts; scalar_t__ icdoff; } ;
struct nvme_rdma_ctrl {int use_inline_data; int /*<<< orphan*/ * queues; TYPE_2__ ctrl; } ;
struct TYPE_4__ {scalar_t__ queue_size; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvme_rdma_ctrl*,int) ; 
 int FUNC5 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_rdma_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC10(struct nvme_rdma_ctrl *ctrl, bool new)
{
	int ret = -EINVAL;
	bool changed;

	ret = FUNC4(ctrl, new);
	if (ret)
		return ret;

	if (ctrl->ctrl.icdoff) {
		FUNC1(ctrl->ctrl.device, "icdoff is not supported!\n");
		goto destroy_admin;
	}

	if (!(ctrl->ctrl.sgls & (1 << 2))) {
		FUNC1(ctrl->ctrl.device,
			"Mandatory keyed sgls are not supported!\n");
		goto destroy_admin;
	}

	if (ctrl->ctrl.opts->queue_size > ctrl->ctrl.sqsize + 1) {
		FUNC2(ctrl->ctrl.device,
			"queue_size %zu > ctrl sqsize %u, clamping down\n",
			ctrl->ctrl.opts->queue_size, ctrl->ctrl.sqsize + 1);
	}

	if (ctrl->ctrl.sqsize + 1 > ctrl->ctrl.maxcmd) {
		FUNC2(ctrl->ctrl.device,
			"sqsize %u > ctrl maxcmd %u, clamping down\n",
			ctrl->ctrl.sqsize + 1, ctrl->ctrl.maxcmd);
		ctrl->ctrl.sqsize = ctrl->ctrl.maxcmd - 1;
	}

	if (ctrl->ctrl.sgls & (1 << 20))
		ctrl->use_inline_data = true;

	if (ctrl->ctrl.queue_count > 1) {
		ret = FUNC5(ctrl, new);
		if (ret)
			goto destroy_admin;
	}

	changed = FUNC3(&ctrl->ctrl, NVME_CTRL_LIVE);
	if (!changed) {
		/* state change failure is ok if we're in DELETING state */
		FUNC0(ctrl->ctrl.state != NVME_CTRL_DELETING);
		ret = -EINVAL;
		goto destroy_io;
	}

	FUNC9(&ctrl->ctrl);
	return 0;

destroy_io:
	if (ctrl->ctrl.queue_count > 1)
		FUNC7(ctrl, new);
destroy_admin:
	FUNC8(&ctrl->queues[0]);
	FUNC6(ctrl, new);
	return ret;
}