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
struct TYPE_3__ {int /*<<< orphan*/  tgt_mutex; } ;
struct scsi_qla_host {TYPE_1__ vha_tgt; struct qla_tgt* host_no; } ;
struct qla_tgt {int tgt_stop; int /*<<< orphan*/  waitQ; struct scsi_qla_host* sess_count; int /*<<< orphan*/  sess_work_lock; int /*<<< orphan*/  sess_works_list; scalar_t__ tgt_stopped; struct qla_hw_data* ha; struct scsi_qla_host* vha; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_shutting_down; } ;
struct qla_hw_data {int /*<<< orphan*/  optrom_mutex; TYPE_2__ flags; } ;

/* Variables and functions */
 int EPERM ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_tgt_mgt ; 
 scalar_t__ FUNC5 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  qla_tgt_mutex ; 
 int /*<<< orphan*/  FUNC7 (struct qla_tgt*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct qla_tgt*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC13(struct qla_tgt *tgt)
{
	struct scsi_qla_host *vha = tgt->vha;
	struct qla_hw_data *ha = tgt->ha;
	unsigned long flags;

	FUNC2(&ha->optrom_mutex);
	FUNC2(&qla_tgt_mutex);

	if (tgt->tgt_stop || tgt->tgt_stopped) {
		FUNC4(ql_dbg_tgt_mgt, vha, 0xf04e,
		    "Already in tgt->tgt_stop or tgt_stopped state\n");
		FUNC3(&qla_tgt_mutex);
		FUNC3(&ha->optrom_mutex);
		return -EPERM;
	}

	FUNC4(ql_dbg_tgt_mgt, vha, 0xe003, "Stopping target for host %ld(%p)\n",
	    vha->host_no, vha);
	/*
	 * Mutex needed to sync with qla_tgt_fc_port_[added,deleted].
	 * Lock is needed, because we still can get an incoming packet.
	 */
	FUNC2(&vha->vha_tgt.tgt_mutex);
	tgt->tgt_stop = 1;
	FUNC7(tgt);
	FUNC3(&vha->vha_tgt.tgt_mutex);
	FUNC3(&qla_tgt_mutex);

	FUNC4(ql_dbg_tgt_mgt, vha, 0xf009,
	    "Waiting for sess works (tgt %p)", tgt);
	FUNC9(&tgt->sess_work_lock, flags);
	while (!FUNC1(&tgt->sess_works_list)) {
		FUNC10(&tgt->sess_work_lock, flags);
		FUNC0();
		FUNC9(&tgt->sess_work_lock, flags);
	}
	FUNC10(&tgt->sess_work_lock, flags);

	FUNC4(ql_dbg_tgt_mgt, vha, 0xf00a,
	    "Waiting for tgt %p: sess_count=%d\n", tgt, tgt->sess_count);

	FUNC12(tgt->waitQ, FUNC11(tgt), 10*HZ);

	/* Big hammer */
	if (!ha->flags.host_shutting_down &&
	    (FUNC6(vha) || FUNC5(vha)))
		FUNC8(vha);

	/* Wait for sessions to clear out (just in case) */
	FUNC12(tgt->waitQ, FUNC11(tgt), 10*HZ);
	FUNC3(&ha->optrom_mutex);

	return 0;
}