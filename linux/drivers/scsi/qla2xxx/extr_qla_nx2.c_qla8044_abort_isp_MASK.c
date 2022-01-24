#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_12__ {scalar_t__ nic_core_reset_hdlr_active; scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {TYPE_1__ flags; } ;
struct TYPE_13__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ DONTRESET_BIT0 ; 
 int /*<<< orphan*/  QLA8044_CRB_DEV_STATE_INDEX ; 
 int /*<<< orphan*/  QLA8XXX_DEV_NEED_RESET ; 
 scalar_t__ QLA8XXX_DEV_READY ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 scalar_t__ ql2xdontresethba ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

int
FUNC11(scsi_qla_host_t *vha)
{
	int rval;
	uint32_t dev_state;
	struct qla_hw_data *ha = vha->hw;

	FUNC4(ha);
	dev_state = FUNC6(vha, QLA8044_CRB_DEV_STATE_INDEX);

	if (ql2xdontresethba)
		FUNC7(vha);

	/* If device_state is NEED_RESET, go ahead with
	 * Reset,irrespective of ql2xdontresethba. This is to allow a
	 * non-reset-owner to force a reset. Non-reset-owner sets
	 * the IDC_CTRL BIT0 to prevent Reset-owner from doing a Reset
	 * and then forces a Reset by setting device_state to
	 * NEED_RESET. */
	if (dev_state == QLA8XXX_DEV_READY) {
		/* If IDC_CTRL DONTRESETHBA_BIT0 is set don't do reset
		 * recovery */
		if (FUNC3(ha) == DONTRESET_BIT0) {
			FUNC0(ql_dbg_p3p, vha, 0xb13e,
			    "Reset recovery disabled\n");
			rval = QLA_FUNCTION_FAILED;
			goto exit_isp_reset;
		}

		FUNC0(ql_dbg_p3p, vha, 0xb140,
		    "HW State: NEED RESET\n");
		FUNC8(vha, QLA8044_CRB_DEV_STATE_INDEX,
		    QLA8XXX_DEV_NEED_RESET);
	}

	/* For ISP8044, Reset owner is NIC, iSCSI or FCOE based on priority
	 * and which drivers are present. Unlike ISP82XX, the function setting
	 * NEED_RESET, may not be the Reset owner. */
	FUNC10(vha);

	FUNC5(ha);
	rval = FUNC2(vha);
	FUNC4(ha);
	FUNC1(vha);

exit_isp_reset:
	FUNC5(ha);
	if (rval == QLA_SUCCESS) {
		ha->flags.isp82xx_fw_hung = 0;
		ha->flags.nic_core_reset_hdlr_active = 0;
		rval = FUNC9(vha);
	}

	return rval;
}