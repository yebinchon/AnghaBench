#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int queue_count; int /*<<< orphan*/  admin_q; scalar_t__ tagset; } ;
struct nvme_fc_ctrl {int assoc_active; scalar_t__ iocnt; TYPE_1__ ctrl; int /*<<< orphan*/ * queues; scalar_t__ association_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  ioabort_wait; int /*<<< orphan*/  admin_tag_set; int /*<<< orphan*/  tag_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCCTRL_TERMIO ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_fc_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC6 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  nvme_fc_terminate_exchange ; 
 int /*<<< orphan*/  FUNC11 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(struct nvme_fc_ctrl *ctrl)
{
	unsigned long flags;

	if (!ctrl->assoc_active)
		return;
	ctrl->assoc_active = false;

	FUNC15(&ctrl->lock, flags);
	ctrl->flags |= FCCTRL_TERMIO;
	ctrl->iocnt = 0;
	FUNC17(&ctrl->lock, flags);

	/*
	 * If io queues are present, stop them and terminate all outstanding
	 * ios on them. As FC allocates FC exchange for each io, the
	 * transport must contact the LLDD to terminate the exchange,
	 * thus releasing the FC exchange. We use blk_mq_tagset_busy_itr()
	 * to tell us what io's are busy and invoke a transport routine
	 * to kill them with the LLDD.  After terminating the exchange
	 * the LLDD will call the transport's normal io done path, but it
	 * will have an aborted status. The done path will return the
	 * io requests back to the block layer as part of normal completions
	 * (but with error status).
	 */
	if (ctrl->ctrl.queue_count > 1) {
		FUNC13(&ctrl->ctrl);
		FUNC2(&ctrl->tag_set,
				nvme_fc_terminate_exchange, &ctrl->ctrl);
		FUNC3(&ctrl->tag_set);
	}

	/*
	 * Other transports, which don't have link-level contexts bound
	 * to sqe's, would try to gracefully shutdown the controller by
	 * writing the registers for shutdown and polling (call
	 * nvme_shutdown_ctrl()). Given a bunch of i/o was potentially
	 * just aborted and we will wait on those contexts, and given
	 * there was no indication of how live the controlelr is on the
	 * link, don't send more io to create more contexts for the
	 * shutdown. Let the controller fail via keepalive failure if
	 * its still present.
	 */

	/*
	 * clean up the admin queue. Same thing as above.
	 * use blk_mq_tagset_busy_itr() and the transport routine to
	 * terminate the exchanges.
	 */
	FUNC1(ctrl->ctrl.admin_q);
	FUNC2(&ctrl->admin_tag_set,
				nvme_fc_terminate_exchange, &ctrl->ctrl);
	FUNC3(&ctrl->admin_tag_set);

	/* kill the aens as they are a separate path */
	FUNC5(ctrl);

	/* wait for all io that had to be aborted */
	FUNC14(&ctrl->lock);
	FUNC18(ctrl->ioabort_wait, ctrl->iocnt == 0, ctrl->lock);
	ctrl->flags &= ~FCCTRL_TERMIO;
	FUNC16(&ctrl->lock);

	FUNC10(ctrl);

	/*
	 * send a Disconnect(association) LS to fc-nvme target
	 * Note: could have been sent at top of process, but
	 * cleaner on link traffic if after the aborts complete.
	 * Note: if association doesn't exist, association_id will be 0
	 */
	if (ctrl->association_id)
		FUNC11(ctrl);

	if (ctrl->ctrl.tagset) {
		FUNC7(ctrl);
		FUNC8(ctrl);
	}

	FUNC0(ctrl, &ctrl->queues[0], 0);
	FUNC9(&ctrl->queues[0]);

	/* re-enable the admin_q so anything new can fast fail */
	FUNC4(ctrl->ctrl.admin_q);

	/* resume the io queues so that things will fast fail */
	FUNC12(&ctrl->ctrl);

	FUNC6(ctrl);
}