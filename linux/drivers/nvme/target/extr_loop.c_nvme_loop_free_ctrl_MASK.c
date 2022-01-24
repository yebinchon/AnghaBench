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
struct TYPE_2__ {int /*<<< orphan*/  connect_q; } ;
struct nvme_loop_ctrl {struct nvme_loop_ctrl* queues; int /*<<< orphan*/  tag_set; TYPE_1__ ctrl; int /*<<< orphan*/  list; } ;
struct nvme_ctrl {int /*<<< orphan*/  opts; scalar_t__ tagset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_loop_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvme_loop_ctrl_mutex ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct nvme_loop_ctrl* FUNC8 (struct nvme_ctrl*) ; 

__attribute__((used)) static void FUNC9(struct nvme_ctrl *nctrl)
{
	struct nvme_loop_ctrl *ctrl = FUNC8(nctrl);

	if (FUNC4(&ctrl->list))
		goto free_ctrl;

	FUNC5(&nvme_loop_ctrl_mutex);
	FUNC3(&ctrl->list);
	FUNC6(&nvme_loop_ctrl_mutex);

	if (nctrl->tagset) {
		FUNC0(ctrl->ctrl.connect_q);
		FUNC1(&ctrl->tag_set);
	}
	FUNC2(ctrl->queues);
	FUNC7(nctrl->opts);
free_ctrl:
	FUNC2(ctrl);
}