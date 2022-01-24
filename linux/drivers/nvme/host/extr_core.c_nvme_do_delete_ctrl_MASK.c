#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nvme_ctrl {TYPE_2__* ops; int /*<<< orphan*/  reset_work; TYPE_1__* opts; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* delete_ctrl ) (struct nvme_ctrl*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  subsysnqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC7(struct nvme_ctrl *ctrl)
{
	FUNC0(ctrl->device,
		 "Removing ctrl: NQN \"%s\"\n", ctrl->opts->subsysnqn);

	FUNC1(&ctrl->reset_work);
	FUNC4(ctrl);
	FUNC3(ctrl);
	ctrl->ops->delete_ctrl(ctrl);
	FUNC5(ctrl);
	FUNC2(ctrl);
}