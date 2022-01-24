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
struct nvmf_ctrl_options {int /*<<< orphan*/  nr_io_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue_count; int /*<<< orphan*/  device; struct nvmf_ctrl_options* opts; } ;
struct nvme_loop_ctrl {TYPE_2__ ctrl; TYPE_1__* queues; } ;
struct TYPE_3__ {int /*<<< orphan*/  nvme_sq; struct nvme_loop_ctrl* ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_loop_ctrl*) ; 
 int FUNC4 (TYPE_2__*,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct nvme_loop_ctrl *ctrl)
{
	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
	unsigned int nr_io_queues;
	int ret, i;

	nr_io_queues = FUNC1(opts->nr_io_queues, FUNC2());
	ret = FUNC4(&ctrl->ctrl, &nr_io_queues);
	if (ret || !nr_io_queues)
		return ret;

	FUNC0(ctrl->ctrl.device, "creating %d I/O queues.\n", nr_io_queues);

	for (i = 1; i <= nr_io_queues; i++) {
		ctrl->queues[i].ctrl = ctrl;
		ret = FUNC5(&ctrl->queues[i].nvme_sq);
		if (ret)
			goto out_destroy_queues;

		ctrl->ctrl.queue_count++;
	}

	return 0;

out_destroy_queues:
	FUNC3(ctrl);
	return ret;
}