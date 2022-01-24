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
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  device; } ;
struct nvme_fc_ctrl {TYPE_1__ ctrl; int /*<<< orphan*/  cnum; int /*<<< orphan*/  err_work_active; int /*<<< orphan*/  err_work; } ;

/* Variables and functions */
 scalar_t__ NVME_CTRL_CONNECTING ; 
 scalar_t__ NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  nvme_fc_wq ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nvme_fc_ctrl *ctrl, char *errmsg)
{
	int active;

	/*
	 * if an error (io timeout, etc) while (re)connecting,
	 * it's an error on creating the new association.
	 * Start the error recovery thread if it hasn't already
	 * been started. It is expected there could be multiple
	 * ios hitting this path before things are cleaned up.
	 */
	if (ctrl->ctrl.state == NVME_CTRL_CONNECTING) {
		active = FUNC2(&ctrl->err_work_active, 1);
		if (!active && !FUNC5(nvme_fc_wq, &ctrl->err_work)) {
			FUNC1(&ctrl->err_work_active, 0);
			FUNC0(1);
		}
		return;
	}

	/* Otherwise, only proceed if in LIVE state - e.g. on first error */
	if (ctrl->ctrl.state != NVME_CTRL_LIVE)
		return;

	FUNC3(ctrl->ctrl.device,
		"NVME-FC{%d}: transport association error detected: %s\n",
		ctrl->cnum, errmsg);
	FUNC3(ctrl->ctrl.device,
		"NVME-FC{%d}: resetting controller\n", ctrl->cnum);

	FUNC4(&ctrl->ctrl);
}