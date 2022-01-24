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
struct TYPE_3__ {scalar_t__ state; int /*<<< orphan*/  device; } ;
struct nvme_fc_ctrl {int /*<<< orphan*/  cnum; TYPE_1__ ctrl; } ;

/* Variables and functions */
 scalar_t__ NVME_CTRL_CONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(struct nvme_fc_ctrl *ctrl)
{
	FUNC3(&ctrl->ctrl);

	/* will block will waiting for io to terminate */
	FUNC2(ctrl);

	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING &&
	    !FUNC1(&ctrl->ctrl, NVME_CTRL_CONNECTING))
		FUNC0(ctrl->ctrl.device,
			"NVME-FC{%d}: error_recovery: Couldn't change state "
			"to CONNECTING\n", ctrl->cnum);
}