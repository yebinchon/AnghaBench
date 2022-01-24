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
struct TYPE_5__ {int size; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  l; } ;
struct TYPE_4__ {int size; int /*<<< orphan*/ * l; int /*<<< orphan*/  ldma; int /*<<< orphan*/  fcports; } ;
struct scsi_qla_host {struct qla_hw_data* hw; struct Scsi_Host* host; int /*<<< orphan*/  host_str; int /*<<< orphan*/  host_no; TYPE_2__ scan; TYPE_1__ gnl; int /*<<< orphan*/  vref_waitq; int /*<<< orphan*/  fcport_waitQ; int /*<<< orphan*/  cmd_list_lock; int /*<<< orphan*/  work_lock; int /*<<< orphan*/  iocb_work; int /*<<< orphan*/  gpnid_list; int /*<<< orphan*/  qp_list; int /*<<< orphan*/  plogi_ack_list; int /*<<< orphan*/  logo_list; int /*<<< orphan*/  qla_sess_op_cmd_list; int /*<<< orphan*/  qla_cmd_list; int /*<<< orphan*/  list; int /*<<< orphan*/  work_list; int /*<<< orphan*/  vp_fcports; int /*<<< orphan*/  ql2xiniexchg; int /*<<< orphan*/  ql2xexchoffld; int /*<<< orphan*/  qlini_mode; } ;
struct scsi_host_template {int dummy; } ;
struct qla_hw_data {int max_loop_id; int max_fibre_devices; TYPE_3__* pdev; } ;
struct get_name_list_extended {int dummy; } ;
struct fab_scan_rp {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_no; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* QLA2XXX_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ql2x_ini_mode ; 
 int /*<<< orphan*/  ql2xexchoffld ; 
 int /*<<< orphan*/  ql2xiniexchg ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,struct Scsi_Host*,struct qla_hw_data*,struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  qla2x00_iocb_work_fn ; 
 int /*<<< orphan*/  qla_scan_work_fn ; 
 struct Scsi_Host* FUNC11 (struct scsi_host_template*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct Scsi_Host*) ; 
 struct scsi_qla_host* FUNC13 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

struct scsi_qla_host *FUNC17(struct scsi_host_template *sht,
						struct qla_hw_data *ha)
{
	struct Scsi_Host *host;
	struct scsi_qla_host *vha = NULL;

	host = FUNC11(sht, sizeof(scsi_qla_host_t));
	if (!host) {
		FUNC10(ql_log_fatal, ha->pdev, 0x0107,
		    "Failed to allocate host from the scsi layer, aborting.\n");
		return NULL;
	}

	/* Clear our data area */
	vha = FUNC13(host);
	FUNC7(vha, 0, sizeof(scsi_qla_host_t));

	vha->host = host;
	vha->host_no = host->host_no;
	vha->hw = ha;

	vha->qlini_mode = ql2x_ini_mode;
	vha->ql2xexchoffld = ql2xexchoffld;
	vha->ql2xiniexchg = ql2xiniexchg;

	FUNC1(&vha->vp_fcports);
	FUNC1(&vha->work_list);
	FUNC1(&vha->list);
	FUNC1(&vha->qla_cmd_list);
	FUNC1(&vha->qla_sess_op_cmd_list);
	FUNC1(&vha->logo_list);
	FUNC1(&vha->plogi_ack_list);
	FUNC1(&vha->qp_list);
	FUNC1(&vha->gnl.fcports);
	FUNC1(&vha->gpnid_list);
	FUNC2(&vha->iocb_work, qla2x00_iocb_work_fn);

	FUNC14(&vha->work_lock);
	FUNC14(&vha->cmd_list_lock);
	FUNC6(&vha->fcport_waitQ);
	FUNC6(&vha->vref_waitq);

	vha->gnl.size = sizeof(struct get_name_list_extended) *
			(ha->max_loop_id + 1);
	vha->gnl.l = FUNC4(&ha->pdev->dev,
	    vha->gnl.size, &vha->gnl.ldma, GFP_KERNEL);
	if (!vha->gnl.l) {
		FUNC9(ql_log_fatal, vha, 0xd04a,
		    "Alloc failed for name list.\n");
		FUNC12(vha->host);
		return NULL;
	}

	/* todo: what about ext login? */
	vha->scan.size = ha->max_fibre_devices * sizeof(struct fab_scan_rp);
	vha->scan.l = FUNC16(vha->scan.size);
	if (!vha->scan.l) {
		FUNC9(ql_log_fatal, vha, 0xd04a,
		    "Alloc failed for scan database.\n");
		FUNC5(&ha->pdev->dev, vha->gnl.size,
		    vha->gnl.l, vha->gnl.ldma);
		vha->gnl.l = NULL;
		FUNC12(vha->host);
		return NULL;
	}
	FUNC0(&vha->scan.scan_work, qla_scan_work_fn);

	FUNC15(vha->host_str, "%s_%ld", QLA2XXX_DRIVER_NAME, vha->host_no);
	FUNC8(ql_dbg_init, vha, 0x0041,
	    "Allocated the host=%p hw=%p vha=%p dev_name=%s",
	    vha->host, vha->hw, vha,
	    FUNC3(&(ha->pdev->dev)));

	return vha;
}