#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct nvmf_ctrl_options {unsigned int nr_io_queues; } ;
struct TYPE_6__ {int queue_count; int /*<<< orphan*/  device; scalar_t__ sqsize; struct nvmf_ctrl_options* opts; } ;
struct nvme_fc_ctrl {int /*<<< orphan*/  tag_set; TYPE_3__ ctrl; TYPE_2__* lport; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_hw_queues; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct nvme_fc_ctrl*,scalar_t__) ; 
 int FUNC5 (struct nvme_fc_ctrl*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_fc_ctrl*) ; 
 int FUNC8 (TYPE_3__*,unsigned int*) ; 

__attribute__((used)) static int
FUNC9(struct nvme_fc_ctrl *ctrl)
{
	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
	u32 prior_ioq_cnt = ctrl->ctrl.queue_count - 1;
	unsigned int nr_io_queues;
	int ret;

	nr_io_queues = FUNC2(FUNC2(opts->nr_io_queues, FUNC3()),
				ctrl->lport->ops->max_hw_queues);
	ret = FUNC8(&ctrl->ctrl, &nr_io_queues);
	if (ret) {
		FUNC1(ctrl->ctrl.device,
			"set_queue_count failed: %d\n", ret);
		return ret;
	}

	if (!nr_io_queues && prior_ioq_cnt) {
		FUNC1(ctrl->ctrl.device,
			"Fail Reconnect: At least 1 io queue "
			"required (was %d)\n", prior_ioq_cnt);
		return -ENOSPC;
	}

	ctrl->ctrl.queue_count = nr_io_queues + 1;
	/* check for io queues existing */
	if (ctrl->ctrl.queue_count == 1)
		return 0;

	ret = FUNC5(ctrl, ctrl->ctrl.sqsize + 1);
	if (ret)
		goto out_free_io_queues;

	ret = FUNC4(ctrl, ctrl->ctrl.sqsize + 1);
	if (ret)
		goto out_delete_hw_queues;

	if (prior_ioq_cnt != nr_io_queues)
		FUNC1(ctrl->ctrl.device,
			"reconnect: revising io queue count from %d to %d\n",
			prior_ioq_cnt, nr_io_queues);
	FUNC0(&ctrl->tag_set, nr_io_queues);

	return 0;

out_delete_hw_queues:
	FUNC6(ctrl);
out_free_io_queues:
	FUNC7(ctrl);
	return ret;
}