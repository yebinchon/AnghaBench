#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct nvme_loop_iod {int dummy; } ;
struct TYPE_9__ {int reserved_tags; int cmd_size; int /*<<< orphan*/  timeout; scalar_t__ nr_hw_queues; struct nvme_loop_ctrl* driver_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/ * ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  connect_q; TYPE_3__* tagset; scalar_t__ queue_count; TYPE_1__* opts; } ;
struct nvme_loop_ctrl {TYPE_3__ tag_set; TYPE_2__ ctrl; } ;
struct TYPE_7__ {int /*<<< orphan*/  queue_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_F_SHOULD_MERGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  NVME_IO_TIMEOUT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int SG_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct nvme_loop_ctrl*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_loop_ctrl*) ; 
 int FUNC9 (struct nvme_loop_ctrl*) ; 
 int /*<<< orphan*/  nvme_loop_mq_ops ; 

__attribute__((used)) static int FUNC10(struct nvme_loop_ctrl *ctrl)
{
	int ret;

	ret = FUNC9(ctrl);
	if (ret)
		return ret;

	FUNC6(&ctrl->tag_set, 0, sizeof(ctrl->tag_set));
	ctrl->tag_set.ops = &nvme_loop_mq_ops;
	ctrl->tag_set.queue_depth = ctrl->ctrl.opts->queue_size;
	ctrl->tag_set.reserved_tags = 1; /* fabric connect */
	ctrl->tag_set.numa_node = NUMA_NO_NODE;
	ctrl->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
	ctrl->tag_set.cmd_size = sizeof(struct nvme_loop_iod) +
		SG_CHUNK_SIZE * sizeof(struct scatterlist);
	ctrl->tag_set.driver_data = ctrl;
	ctrl->tag_set.nr_hw_queues = ctrl->ctrl.queue_count - 1;
	ctrl->tag_set.timeout = NVME_IO_TIMEOUT;
	ctrl->ctrl.tagset = &ctrl->tag_set;

	ret = FUNC3(&ctrl->tag_set);
	if (ret)
		goto out_destroy_queues;

	ctrl->ctrl.connect_q = FUNC5(&ctrl->tag_set);
	if (FUNC0(ctrl->ctrl.connect_q)) {
		ret = FUNC1(ctrl->ctrl.connect_q);
		goto out_free_tagset;
	}

	ret = FUNC7(ctrl);
	if (ret)
		goto out_cleanup_connect_q;

	return 0;

out_cleanup_connect_q:
	FUNC2(ctrl->ctrl.connect_q);
out_free_tagset:
	FUNC4(&ctrl->tag_set);
out_destroy_queues:
	FUNC8(ctrl);
	return ret;
}