#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct nvmf_ctrl_options {scalar_t__ queue_size; int /*<<< orphan*/  subsysnqn; } ;
struct TYPE_20__ {int max_hw_sectors; scalar_t__ maxcmd; scalar_t__ sqsize; int queue_count; scalar_t__ nr_reconnects; int /*<<< orphan*/  device; scalar_t__ icdoff; int /*<<< orphan*/  admin_q; struct nvmf_ctrl_options* opts; } ;
struct nvme_fc_ctrl {int assoc_active; TYPE_9__* queues; TYPE_6__ ctrl; int /*<<< orphan*/  ioq_live; TYPE_5__* lport; TYPE_3__* rport; int /*<<< orphan*/  cnum; } ;
struct TYPE_21__ {int /*<<< orphan*/  flags; } ;
struct TYPE_15__ {int /*<<< orphan*/  port_name; } ;
struct TYPE_19__ {TYPE_4__* ops; TYPE_1__ localport; } ;
struct TYPE_18__ {int max_sgl_segments; } ;
struct TYPE_16__ {scalar_t__ port_state; int /*<<< orphan*/  port_name; } ;
struct TYPE_17__ {TYPE_2__ remoteport; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTUNIQ ; 
 scalar_t__ FC_OBJSTATE_ONLINE ; 
 int NVME_AQ_DEPTH ; 
 int /*<<< orphan*/  NVME_CTRL_LIVE ; 
 int /*<<< orphan*/  NVME_FC_Q_LIVE ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct nvme_fc_ctrl*,TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_fc_ctrl*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*) ; 
 int FUNC8 (struct nvme_fc_ctrl*,TYPE_9__*,int,int) ; 
 int FUNC9 (struct nvme_fc_ctrl*) ; 
 scalar_t__ FUNC10 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*) ; 
 int FUNC13 (struct nvme_fc_ctrl*) ; 
 int FUNC14 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC15 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC16 (struct nvme_fc_ctrl*) ; 
 int FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__*) ; 
 int FUNC19 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(struct nvme_fc_ctrl *ctrl)
{
	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
	int ret;
	bool changed;

	++ctrl->ctrl.nr_reconnects;

	if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
		return -ENODEV;

	if (FUNC10(ctrl))
		return -ENOTUNIQ;

	FUNC4(ctrl->ctrl.device,
		"NVME-FC{%d}: create association : host wwpn 0x%016llx "
		" rport wwpn 0x%016llx: NQN \"%s\"\n",
		ctrl->cnum, ctrl->lport->localport.port_name,
		ctrl->rport->remoteport.port_name, ctrl->ctrl.opts->subsysnqn);

	/*
	 * Create the admin queue
	 */

	ret = FUNC0(ctrl, &ctrl->queues[0], 0,
				NVME_AQ_DEPTH);
	if (ret)
		goto out_free_queue;

	ret = FUNC8(ctrl, &ctrl->queues[0],
				NVME_AQ_DEPTH, (NVME_AQ_DEPTH / 4));
	if (ret)
		goto out_delete_hw_queue;

	ret = FUNC19(&ctrl->ctrl);
	if (ret)
		goto out_disconnect_admin_queue;

	FUNC20(NVME_FC_Q_LIVE, &ctrl->queues[0].flags);

	/*
	 * Check controller capabilities
	 *
	 * todo:- add code to check if ctrl attributes changed from
	 * prior connection values
	 */

	ret = FUNC7(&ctrl->ctrl);
	if (ret)
		goto out_disconnect_admin_queue;

	ctrl->ctrl.max_hw_sectors =
		(ctrl->lport->ops->max_sgl_segments - 1) << (PAGE_SHIFT - 9);

	FUNC2(ctrl->ctrl.admin_q);

	ret = FUNC17(&ctrl->ctrl);
	if (ret)
		goto out_disconnect_admin_queue;

	/* sanity checks */

	/* FC-NVME does not have other data in the capsule */
	if (ctrl->ctrl.icdoff) {
		FUNC3(ctrl->ctrl.device, "icdoff %d is not supported!\n",
				ctrl->ctrl.icdoff);
		goto out_disconnect_admin_queue;
	}

	/* FC-NVME supports normal SGL Data Block Descriptors */

	if (opts->queue_size > ctrl->ctrl.maxcmd) {
		/* warn if maxcmd is lower than queue_size */
		FUNC5(ctrl->ctrl.device,
			"queue_size %zu > ctrl maxcmd %u, reducing "
			"to queue_size\n",
			opts->queue_size, ctrl->ctrl.maxcmd);
		opts->queue_size = ctrl->ctrl.maxcmd;
	}

	if (opts->queue_size > ctrl->ctrl.sqsize + 1) {
		/* warn if sqsize is lower than queue_size */
		FUNC5(ctrl->ctrl.device,
			"queue_size %zu > ctrl sqsize %u, clamping down\n",
			opts->queue_size, ctrl->ctrl.sqsize + 1);
		opts->queue_size = ctrl->ctrl.sqsize + 1;
	}

	ret = FUNC13(ctrl);
	if (ret)
		goto out_term_aen_ops;

	/*
	 * Create the io queues
	 */

	if (ctrl->ctrl.queue_count > 1) {
		if (!ctrl->ioq_live)
			ret = FUNC9(ctrl);
		else
			ret = FUNC14(ctrl);
		if (ret)
			goto out_term_aen_ops;
	}

	changed = FUNC6(&ctrl->ctrl, NVME_CTRL_LIVE);

	ctrl->ctrl.nr_reconnects = 0;

	if (changed)
		FUNC18(&ctrl->ctrl);

	return 0;	/* Success */

out_term_aen_ops:
	FUNC15(ctrl);
out_disconnect_admin_queue:
	/* send a Disconnect(association) LS to fc-nvme target */
	FUNC16(ctrl);
out_delete_hw_queue:
	FUNC1(ctrl, &ctrl->queues[0], 0);
out_free_queue:
	FUNC12(&ctrl->queues[0]);
	ctrl->assoc_active = false;
	FUNC11(ctrl);

	return ret;
}