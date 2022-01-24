#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scatterlist {int dummy; } ;
struct nvme_loop_iod {int dummy; } ;
struct TYPE_11__ {int reserved_tags; int cmd_size; int nr_hw_queues; int /*<<< orphan*/  flags; int /*<<< orphan*/  timeout; struct nvme_loop_ctrl* driver_data; int /*<<< orphan*/  numa_node; int /*<<< orphan*/  queue_depth; int /*<<< orphan*/ * ops; } ;
struct TYPE_10__ {int queue_count; int max_hw_sectors; void* fabrics_q; void* admin_q; TYPE_5__* admin_tagset; } ;
struct nvme_loop_ctrl {TYPE_1__* queues; TYPE_5__ admin_tag_set; TYPE_2__ ctrl; } ;
struct TYPE_9__ {int /*<<< orphan*/  nvme_sq; int /*<<< orphan*/  flags; struct nvme_loop_ctrl* ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADMIN_TIMEOUT ; 
 int /*<<< orphan*/  BLK_MQ_F_NO_SCHED ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  NVME_AQ_MQ_TAG_DEPTH ; 
 int NVME_LOOP_MAX_SEGMENTS ; 
 int /*<<< orphan*/  NVME_LOOP_Q_LIVE ; 
 int PAGE_SHIFT ; 
 int FUNC1 (void*) ; 
 int SG_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 void* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  nvme_loop_admin_mq_ops ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct nvme_loop_ctrl *ctrl)
{
	int error;

	FUNC7(&ctrl->admin_tag_set, 0, sizeof(ctrl->admin_tag_set));
	ctrl->admin_tag_set.ops = &nvme_loop_admin_mq_ops;
	ctrl->admin_tag_set.queue_depth = NVME_AQ_MQ_TAG_DEPTH;
	ctrl->admin_tag_set.reserved_tags = 2; /* connect + keep-alive */
	ctrl->admin_tag_set.numa_node = NUMA_NO_NODE;
	ctrl->admin_tag_set.cmd_size = sizeof(struct nvme_loop_iod) +
		SG_CHUNK_SIZE * sizeof(struct scatterlist);
	ctrl->admin_tag_set.driver_data = ctrl;
	ctrl->admin_tag_set.nr_hw_queues = 1;
	ctrl->admin_tag_set.timeout = ADMIN_TIMEOUT;
	ctrl->admin_tag_set.flags = BLK_MQ_F_NO_SCHED;

	ctrl->queues[0].ctrl = ctrl;
	error = FUNC11(&ctrl->queues[0].nvme_sq);
	if (error)
		return error;
	ctrl->ctrl.queue_count = 1;

	error = FUNC3(&ctrl->admin_tag_set);
	if (error)
		goto out_free_sq;
	ctrl->ctrl.admin_tagset = &ctrl->admin_tag_set;

	ctrl->ctrl.fabrics_q = FUNC5(&ctrl->admin_tag_set);
	if (FUNC0(ctrl->ctrl.fabrics_q)) {
		error = FUNC1(ctrl->ctrl.fabrics_q);
		goto out_free_tagset;
	}

	ctrl->ctrl.admin_q = FUNC5(&ctrl->admin_tag_set);
	if (FUNC0(ctrl->ctrl.admin_q)) {
		error = FUNC1(ctrl->ctrl.admin_q);
		goto out_cleanup_fabrics_q;
	}

	error = FUNC12(&ctrl->ctrl);
	if (error)
		goto out_cleanup_queue;

	FUNC13(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);

	error = FUNC8(&ctrl->ctrl);
	if (error)
		goto out_cleanup_queue;

	ctrl->ctrl.max_hw_sectors =
		(NVME_LOOP_MAX_SEGMENTS - 1) << (PAGE_SHIFT - 9);

	FUNC6(ctrl->ctrl.admin_q);

	error = FUNC9(&ctrl->ctrl);
	if (error)
		goto out_cleanup_queue;

	return 0;

out_cleanup_queue:
	FUNC2(ctrl->ctrl.admin_q);
out_cleanup_fabrics_q:
	FUNC2(ctrl->ctrl.fabrics_q);
out_free_tagset:
	FUNC4(&ctrl->admin_tag_set);
out_free_sq:
	FUNC10(&ctrl->queues[0].nvme_sq);
	return error;
}