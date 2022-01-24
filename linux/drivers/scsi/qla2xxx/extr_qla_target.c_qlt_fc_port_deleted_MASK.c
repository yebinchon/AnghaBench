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
struct TYPE_4__ {struct qla_tgt* qla_tgt; } ;
struct scsi_qla_host {TYPE_3__* hw; TYPE_1__ vha_tgt; } ;
struct qla_tgt {scalar_t__ tgt_stop; } ;
struct fc_port {int generation; int local; int /*<<< orphan*/  port_name; int /*<<< orphan*/  se_sess; } ;
typedef  struct fc_port fc_port_t ;
struct TYPE_5__ {int /*<<< orphan*/  sess_lock; int /*<<< orphan*/  tgt_ops; } ;
struct TYPE_6__ {TYPE_2__ tgt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,struct fc_port*,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt_mgt ; 
 int /*<<< orphan*/  FUNC1 (struct fc_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(struct scsi_qla_host *vha, fc_port_t *fcport, int max_gen)
{
	struct qla_tgt *tgt = vha->vha_tgt.qla_tgt;
	struct fc_port *sess = fcport;
	unsigned long flags;

	if (!vha->hw->tgt.tgt_ops)
		return;

	if (!tgt)
		return;

	FUNC2(&vha->hw->tgt.sess_lock, flags);
	if (tgt->tgt_stop) {
		FUNC3(&vha->hw->tgt.sess_lock, flags);
		return;
	}
	if (!sess->se_sess) {
		FUNC3(&vha->hw->tgt.sess_lock, flags);
		return;
	}

	if (max_gen - sess->generation < 0) {
		FUNC3(&vha->hw->tgt.sess_lock, flags);
		FUNC0(ql_dbg_tgt_mgt, vha, 0xf092,
		    "Ignoring stale deletion request for se_sess %p / sess %p"
		    " for port %8phC, req_gen %d, sess_gen %d\n",
		    sess->se_sess, sess, sess->port_name, max_gen,
		    sess->generation);
		return;
	}

	FUNC0(ql_dbg_tgt_mgt, vha, 0xf008, "qla_tgt_fc_port_deleted %p", sess);

	sess->local = 1;
	FUNC3(&vha->hw->tgt.sess_lock, flags);
	FUNC1(sess);
}