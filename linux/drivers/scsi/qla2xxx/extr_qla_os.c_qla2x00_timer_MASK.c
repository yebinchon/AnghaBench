#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct timer_list {int dummy; } ;
struct req_que {int num_outstanding_cmds; TYPE_3__** outstanding_cmds; } ;
struct TYPE_16__ {int /*<<< orphan*/  host_shutting_down; scalar_t__ eeh_busy; } ;
struct qla_hw_data {int beacon_blink_led; scalar_t__ nvme_last_rptd_aen; scalar_t__ zio_mode; scalar_t__ last_zio_threshold; int /*<<< orphan*/  zio_threshold; int /*<<< orphan*/  nvme_active_aen_cnt; TYPE_1__ flags; int /*<<< orphan*/  wq; int /*<<< orphan*/  hardware_lock; struct req_que** req_q_map; int /*<<< orphan*/  pdev; } ;
struct TYPE_18__ {scalar_t__ cmd_type; scalar_t__ type; TYPE_5__* fcport; } ;
typedef  TYPE_3__ srb_t ;
struct TYPE_17__ {scalar_t__ online; } ;
struct TYPE_19__ {scalar_t__ loop_down_abort_time; int device_flags; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  vp_idx; int /*<<< orphan*/  iocb_work; struct qla_hw_data* hw; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  loop_down_timer; int /*<<< orphan*/  loop_state; scalar_t__ link_down_timeout; TYPE_2__ flags; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_20__ {int flags; } ;
typedef  TYPE_5__ fc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 int /*<<< orphan*/  BEACON_BLINK_NEEDED ; 
 int DFLG_NO_CABLE ; 
 int FCF_FCP2_DEVICE ; 
 int /*<<< orphan*/  FCOE_CTX_RESET_NEEDED ; 
 int /*<<< orphan*/  FCPORT_UPDATE_NEEDED ; 
 int /*<<< orphan*/  IOCB_WORK_ACTIVE ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  ISP_QUIESCE_NEEDED ; 
 int /*<<< orphan*/  ISP_UNRECOVERABLE ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 scalar_t__ FUNC4 (struct qla_hw_data*) ; 
 scalar_t__ FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  LOOP_DEAD ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 scalar_t__ QLA_ZIO_MODE_6 ; 
 int /*<<< orphan*/  RELOGIN_NEEDED ; 
 int /*<<< orphan*/  RESET_MARKER_NEEDED ; 
 int /*<<< orphan*/  SET_NVME_ZIO_THRESHOLD_NEEDED ; 
 int /*<<< orphan*/  SET_ZIO_THRESHOLD_NEEDED ; 
 scalar_t__ SRB_SCSI_CMD ; 
 scalar_t__ TYPE_SRB ; 
 int /*<<< orphan*/  VP_DPC_NEEDED ; 
 int /*<<< orphan*/  WATCH_INTERVAL ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,int,...) ; 
 int /*<<< orphan*/  ql_dbg_timer ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 
 TYPE_4__* vha ; 

void
FUNC29(struct timer_list *t)
{
	scsi_qla_host_t *vha = FUNC11(vha, t, timer);
	unsigned long	cpu_flags = 0;
	int		start_dpc = 0;
	int		index;
	srb_t		*sp;
	uint16_t        w;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req;

	if (ha->flags.eeh_busy) {
		FUNC15(ql_dbg_timer, vha, 0x6000,
		    "EEH = %d, restarting timer.\n",
		    ha->flags.eeh_busy);
		FUNC18(vha, WATCH_INTERVAL);
		return;
	}

	/*
	 * Hardware read to raise pending EEH errors during mailbox waits. If
	 * the read returns -1 then disable the board.
	 */
	if (!FUNC13(ha->pdev)) {
		FUNC14(ha->pdev, PCI_VENDOR_ID, &w);
		FUNC17(vha, w);
	}

	/* Make sure qla82xx_watchdog is run only for physical port */
	if (!vha->vp_idx && FUNC0(ha)) {
		if (FUNC28(ISP_QUIESCE_NEEDED, &vha->dpc_flags))
			start_dpc++;
		if (FUNC5(ha))
			FUNC21(vha);
		else if (FUNC4(ha))
			FUNC20(vha);
	}

	if (!vha->vp_idx && FUNC7(ha))
		FUNC22(vha);

	/* Loop down handler. */
	if (FUNC9(&vha->loop_down_timer) > 0 &&
	    !(FUNC28(ABORT_ISP_ACTIVE, &vha->dpc_flags)) &&
	    !(FUNC28(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags))
		&& vha->flags.online) {

		if (FUNC9(&vha->loop_down_timer) ==
		    vha->loop_down_abort_time) {

			FUNC16(ql_log_info, vha, 0x6008,
			    "Loop down - aborting the queues before time expires.\n");

			if (!FUNC1(ha) && vha->link_down_timeout)
				FUNC10(&vha->loop_state, LOOP_DEAD);

			/*
			 * Schedule an ISP abort to return any FCP2-device
			 * commands.
			 */
			/* NPIV - scan physical port only */
			if (!vha->vp_idx) {
				FUNC25(&ha->hardware_lock,
				    cpu_flags);
				req = ha->req_q_map[0];
				for (index = 1;
				    index < req->num_outstanding_cmds;
				    index++) {
					fc_port_t *sfcp;

					sp = req->outstanding_cmds[index];
					if (!sp)
						continue;
					if (sp->cmd_type != TYPE_SRB)
						continue;
					if (sp->type != SRB_SCSI_CMD)
						continue;
					sfcp = sp->fcport;
					if (!(sfcp->flags & FCF_FCP2_DEVICE))
						continue;

					if (FUNC5(ha))
						FUNC24(FCOE_CTX_RESET_NEEDED,
							&vha->dpc_flags);
					else
						FUNC24(ISP_ABORT_NEEDED,
							&vha->dpc_flags);
					break;
				}
				FUNC26(&ha->hardware_lock,
								cpu_flags);
			}
			start_dpc++;
		}

		/* if the loop has been down for 4 minutes, reinit adapter */
		if (FUNC8(&vha->loop_down_timer) != 0) {
			if (!(vha->device_flags & DFLG_NO_CABLE)) {
				FUNC16(ql_log_warn, vha, 0x6009,
				    "Loop down - aborting ISP.\n");

				if (FUNC5(ha))
					FUNC24(FCOE_CTX_RESET_NEEDED,
						&vha->dpc_flags);
				else
					FUNC24(ISP_ABORT_NEEDED,
						&vha->dpc_flags);
			}
		}
		FUNC15(ql_dbg_timer, vha, 0x600a,
		    "Loop down - seconds remaining %d.\n",
		    FUNC9(&vha->loop_down_timer));
	}
	/* Check if beacon LED needs to be blinked for physical host only */
	if (!vha->vp_idx && (ha->beacon_blink_led == 1)) {
		/* There is no beacon_blink function for ISP82xx */
		if (!FUNC0(ha)) {
			FUNC24(BEACON_BLINK_NEEDED, &vha->dpc_flags);
			start_dpc++;
		}
	}

	/* Process any deferred work. */
	if (!FUNC12(&vha->work_list)) {
		unsigned long flags;
		bool q = false;

		FUNC25(&vha->work_lock, flags);
		if (!FUNC27(IOCB_WORK_ACTIVE, &vha->dpc_flags))
			q = true;
		FUNC26(&vha->work_lock, flags);
		if (q)
			FUNC23(vha->hw->wq, &vha->iocb_work);
	}

	/*
	 * FC-NVME
	 * see if the active AEN count has changed from what was last reported.
	 */
	if (!vha->vp_idx &&
	    (FUNC9(&ha->nvme_active_aen_cnt) != ha->nvme_last_rptd_aen) &&
	    ha->zio_mode == QLA_ZIO_MODE_6 &&
	    !ha->flags.host_shutting_down) {
		FUNC16(ql_log_info, vha, 0x3002,
		    "nvme: Sched: Set ZIO exchange threshold to %d.\n",
		    ha->nvme_last_rptd_aen);
		ha->nvme_last_rptd_aen = FUNC9(&ha->nvme_active_aen_cnt);
		FUNC24(SET_NVME_ZIO_THRESHOLD_NEEDED, &vha->dpc_flags);
		start_dpc++;
	}

	if (!vha->vp_idx &&
	    (FUNC9(&ha->zio_threshold) != ha->last_zio_threshold) &&
	    (ha->zio_mode == QLA_ZIO_MODE_6) &&
	    (FUNC6(ha) || FUNC2(ha) || FUNC3(ha))) {
		FUNC16(ql_log_info, vha, 0x3002,
		    "Sched: Set ZIO exchange threshold to %d.\n",
		    ha->last_zio_threshold);
		ha->last_zio_threshold = FUNC9(&ha->zio_threshold);
		FUNC24(SET_ZIO_THRESHOLD_NEEDED, &vha->dpc_flags);
		start_dpc++;
	}

	/* Schedule the DPC routine if needed */
	if ((FUNC28(ISP_ABORT_NEEDED, &vha->dpc_flags) ||
	    FUNC28(LOOP_RESYNC_NEEDED, &vha->dpc_flags) ||
	    FUNC28(FCPORT_UPDATE_NEEDED, &vha->dpc_flags) ||
	    start_dpc ||
	    FUNC28(RESET_MARKER_NEEDED, &vha->dpc_flags) ||
	    FUNC28(BEACON_BLINK_NEEDED, &vha->dpc_flags) ||
	    FUNC28(ISP_UNRECOVERABLE, &vha->dpc_flags) ||
	    FUNC28(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags) ||
	    FUNC28(VP_DPC_NEEDED, &vha->dpc_flags) ||
	    FUNC28(RELOGIN_NEEDED, &vha->dpc_flags))) {
		FUNC15(ql_dbg_timer, vha, 0x600b,
		    "isp_abort_needed=%d loop_resync_needed=%d "
		    "fcport_update_needed=%d start_dpc=%d "
		    "reset_marker_needed=%d",
		    FUNC28(ISP_ABORT_NEEDED, &vha->dpc_flags),
		    FUNC28(LOOP_RESYNC_NEEDED, &vha->dpc_flags),
		    FUNC28(FCPORT_UPDATE_NEEDED, &vha->dpc_flags),
		    start_dpc,
		    FUNC28(RESET_MARKER_NEEDED, &vha->dpc_flags));
		FUNC15(ql_dbg_timer, vha, 0x600c,
		    "beacon_blink_needed=%d isp_unrecoverable=%d "
		    "fcoe_ctx_reset_needed=%d vp_dpc_needed=%d "
		    "relogin_needed=%d.\n",
		    FUNC28(BEACON_BLINK_NEEDED, &vha->dpc_flags),
		    FUNC28(ISP_UNRECOVERABLE, &vha->dpc_flags),
		    FUNC28(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags),
		    FUNC28(VP_DPC_NEEDED, &vha->dpc_flags),
		    FUNC28(RELOGIN_NEEDED, &vha->dpc_flags));
		FUNC19(vha);
	}

	FUNC18(vha, WATCH_INTERVAL);
}