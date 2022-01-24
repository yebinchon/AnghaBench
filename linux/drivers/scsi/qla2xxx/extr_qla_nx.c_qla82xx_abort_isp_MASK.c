#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int nic_core_reset_hdlr_active; scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {scalar_t__ isp_abort_cnt; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct TYPE_16__ {int online; } ;
struct TYPE_17__ {int device_flags; int /*<<< orphan*/  dpc_flags; TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_15__ {int /*<<< orphan*/  (* reset_adapter ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int DFLG_DEV_FAILED ; 
 int /*<<< orphan*/  ISP_ABORT_RETRY ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ MAX_RETRIES_OF_ISP_ABORT ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*) ; 
 int FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC18(scsi_qla_host_t *vha)
{
	int rval = -1;
	struct qla_hw_data *ha = vha->hw;

	if (vha->device_flags & DFLG_DEV_FAILED) {
		FUNC4(ql_log_warn, vha, 0x8024,
		    "Device in failed state, exiting.\n");
		return QLA_SUCCESS;
	}
	ha->flags.nic_core_reset_hdlr_active = 1;

	FUNC10(ha);
	FUNC13(vha);
	FUNC11(ha);

	if (FUNC1(ha))
		rval = FUNC9(vha);
	else if (FUNC0(ha)) {
		FUNC6(ha);
		/* Decide the reset ownership */
		FUNC14(vha);
		FUNC7(ha);
		rval = FUNC5(vha);
	}

	FUNC10(ha);
	FUNC8(ha);
	FUNC11(ha);

	if (rval == QLA_SUCCESS) {
		ha->flags.isp82xx_fw_hung = 0;
		ha->flags.nic_core_reset_hdlr_active = 0;
		FUNC12(vha);
	}

	if (rval) {
		vha->flags.online = 1;
		if (FUNC17(ISP_ABORT_RETRY, &vha->dpc_flags)) {
			if (ha->isp_abort_cnt == 0) {
				FUNC4(ql_log_warn, vha, 0x8027,
				    "ISP error recover failed - board "
				    "disabled.\n");
				/*
				 * The next call disables the board
				 * completely.
				 */
				ha->isp_ops->reset_adapter(vha);
				vha->flags.online = 0;
				FUNC2(ISP_ABORT_RETRY,
				    &vha->dpc_flags);
				rval = QLA_SUCCESS;
			} else { /* schedule another ISP abort */
				ha->isp_abort_cnt--;
				FUNC4(ql_log_warn, vha, 0x8036,
				    "ISP abort - retry remaining %d.\n",
				    ha->isp_abort_cnt);
				rval = QLA_FUNCTION_FAILED;
			}
		} else {
			ha->isp_abort_cnt = MAX_RETRIES_OF_ISP_ABORT;
			FUNC3(ql_dbg_taskm, vha, 0x8029,
			    "ISP error recovery - retrying (%d) more times.\n",
			    ha->isp_abort_cnt);
			FUNC15(ISP_ABORT_RETRY, &vha->dpc_flags);
			rval = QLA_FUNCTION_FAILED;
		}
	}
	return rval;
}