#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct qla_hw_data {TYPE_2__* pdev; int /*<<< orphan*/  vport_lock; int /*<<< orphan*/  vp_idx_map; int /*<<< orphan*/  cur_vport_count; } ;
struct fc_vport {TYPE_5__* dd_data; } ;
struct TYPE_20__ {int /*<<< orphan*/  l; } ;
struct TYPE_19__ {int /*<<< orphan*/ * l; int /*<<< orphan*/  ldma; int /*<<< orphan*/  size; } ;
struct TYPE_17__ {int delete_progress; } ;
struct TYPE_21__ {scalar_t__ vp_idx; int /*<<< orphan*/  host; TYPE_9__* qpair; TYPE_4__ scan; TYPE_3__ gnl; scalar_t__ timer_active; TYPE_1__ flags; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_5__ scsi_qla_host_t ;
struct TYPE_22__ {scalar_t__ vp_idx; } ;
struct TYPE_18__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCPORT_UPDATE_NEEDED ; 
 int /*<<< orphan*/  LOOP_RESYNC_ACTIVE ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  VPORT_DELETE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_5__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 scalar_t__ FUNC13 (TYPE_5__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (struct qla_hw_data*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(struct fc_vport *fc_vport)
{
	scsi_qla_host_t *vha = fc_vport->dd_data;
	struct qla_hw_data *ha = vha->hw;
	uint16_t id = vha->vp_idx;

	FUNC18(VPORT_DELETE, &vha->dpc_flags);

	while (FUNC19(LOOP_RESYNC_ACTIVE, &vha->dpc_flags) ||
	    FUNC19(FCPORT_UPDATE_NEEDED, &vha->dpc_flags))
		FUNC3(1000);

	FUNC14(vha);

	FUNC9(vha);
	FUNC12(vha);

	vha->flags.delete_progress = 1;

	FUNC15(ha, vha);

	FUNC2(vha->host);

	FUNC17(vha->host);

	/* Allow timer to run to drain queued items, when removing vp */
	FUNC8(vha);

	if (vha->timer_active) {
		FUNC11(vha);
		FUNC6(ql_dbg_user, vha, 0x7086,
		    "Timer for the VP[%d] has stopped\n", vha->vp_idx);
	}

	FUNC10(vha);

	FUNC4(&ha->vport_lock);
	ha->cur_vport_count--;
	FUNC0(vha->vp_idx, ha->vp_idx_map);
	FUNC5(&ha->vport_lock);

	FUNC1(&ha->pdev->dev, vha->gnl.size, vha->gnl.l,
	    vha->gnl.ldma);

	vha->gnl.l = NULL;

	FUNC20(vha->scan.l);

	if (vha->qpair && vha->qpair->vp_idx == vha->vp_idx) {
		if (FUNC13(vha, vha->qpair) != QLA_SUCCESS)
			FUNC7(ql_log_warn, vha, 0x7087,
			    "Queue Pair delete failed.\n");
	}

	FUNC7(ql_log_info, vha, 0x7088, "VP[%d] deleted.\n", id);
	FUNC16(vha->host);
	return 0;
}