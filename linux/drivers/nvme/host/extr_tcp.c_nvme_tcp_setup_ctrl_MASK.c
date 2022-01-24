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
struct nvmf_ctrl_options {scalar_t__ queue_size; } ;
struct nvme_ctrl {scalar_t__ sqsize; scalar_t__ maxcmd; int queue_count; scalar_t__ state; int /*<<< orphan*/  device; scalar_t__ icdoff; struct nvmf_ctrl_options* opts; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ NVME_CTRL_DELETING ; 
 int /*<<< orphan*/  NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*) ; 
 int FUNC5 (struct nvme_ctrl*,int) ; 
 int FUNC6 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_ctrl*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nvme_ctrl*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct nvme_ctrl *ctrl, bool new)
{
	struct nvmf_ctrl_options *opts = ctrl->opts;
	int ret;

	ret = FUNC5(ctrl, new);
	if (ret)
		return ret;

	if (ctrl->icdoff) {
		FUNC1(ctrl->device, "icdoff is not supported!\n");
		goto destroy_admin;
	}

	if (opts->queue_size > ctrl->sqsize + 1)
		FUNC2(ctrl->device,
			"queue_size %zu > ctrl sqsize %u, clamping down\n",
			opts->queue_size, ctrl->sqsize + 1);

	if (ctrl->sqsize + 1 > ctrl->maxcmd) {
		FUNC2(ctrl->device,
			"sqsize %u > ctrl maxcmd %u, clamping down\n",
			ctrl->sqsize + 1, ctrl->maxcmd);
		ctrl->sqsize = ctrl->maxcmd - 1;
	}

	if (ctrl->queue_count > 1) {
		ret = FUNC6(ctrl, new);
		if (ret)
			goto destroy_admin;
	}

	if (!FUNC3(ctrl, NVME_CTRL_LIVE)) {
		/* state change failure is ok if we're in DELETING state */
		FUNC0(ctrl->state != NVME_CTRL_DELETING);
		ret = -EINVAL;
		goto destroy_io;
	}

	FUNC4(ctrl);
	return 0;

destroy_io:
	if (ctrl->queue_count > 1)
		FUNC8(ctrl, new);
destroy_admin:
	FUNC9(ctrl, 0);
	FUNC7(ctrl, new);
	return ret;
}