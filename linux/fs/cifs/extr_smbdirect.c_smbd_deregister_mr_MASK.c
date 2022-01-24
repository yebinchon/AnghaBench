#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  done; } ;
struct TYPE_6__ {int /*<<< orphan*/  invalidate_rkey; } ;
struct ib_send_wr {int /*<<< orphan*/  send_flags; TYPE_2__ ex; scalar_t__ num_sge; TYPE_1__* wr_cqe; int /*<<< orphan*/  opcode; } ;
struct smbd_mr {int need_invalidate; int /*<<< orphan*/  state; int /*<<< orphan*/  invalidate_done; TYPE_3__* mr; TYPE_1__ cqe; struct ib_send_wr inv_wr; struct smbd_connection* conn; } ;
struct smbd_connection {int /*<<< orphan*/  wait_for_mr_cleanup; int /*<<< orphan*/  mr_used_count; int /*<<< orphan*/  mr_recovery_work; int /*<<< orphan*/  workqueue; TYPE_4__* id; } ;
struct TYPE_8__ {int /*<<< orphan*/  qp; } ;
struct TYPE_7__ {int /*<<< orphan*/  rkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WR_LOCAL_INV ; 
 int /*<<< orphan*/  MR_INVALIDATED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ib_send_wr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  local_inv_done ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smbd_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct smbd_mr *smbdirect_mr)
{
	struct ib_send_wr *wr;
	struct smbd_connection *info = smbdirect_mr->conn;
	int rc = 0;

	if (smbdirect_mr->need_invalidate) {
		/* Need to finish local invalidation before returning */
		wr = &smbdirect_mr->inv_wr;
		wr->opcode = IB_WR_LOCAL_INV;
		smbdirect_mr->cqe.done = local_inv_done;
		wr->wr_cqe = &smbdirect_mr->cqe;
		wr->num_sge = 0;
		wr->ex.invalidate_rkey = smbdirect_mr->mr->rkey;
		wr->send_flags = IB_SEND_SIGNALED;

		FUNC2(&smbdirect_mr->invalidate_done);
		rc = FUNC1(info->id->qp, wr, NULL);
		if (rc) {
			FUNC3(ERR, "ib_post_send failed rc=%x\n", rc);
			FUNC5(info);
			goto done;
		}
		FUNC6(&smbdirect_mr->invalidate_done);
		smbdirect_mr->need_invalidate = false;
	} else
		/*
		 * For remote invalidation, just set it to MR_INVALIDATED
		 * and defer to mr_recovery_work to recover the MR for next use
		 */
		smbdirect_mr->state = MR_INVALIDATED;

	/*
	 * Schedule the work to do MR recovery for future I/Os
	 * MR recovery is slow and we don't want it to block the current I/O
	 */
	FUNC4(info->workqueue, &info->mr_recovery_work);

done:
	if (FUNC0(&info->mr_used_count))
		FUNC7(&info->wait_for_mr_cleanup);

	return rc;
}