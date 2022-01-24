#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  nic_core_reset_owner; } ;
struct qla_hw_data {unsigned long fcoe_dev_init_timeout; unsigned long fcoe_reset_timeout; TYPE_1__ flags; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int MAX_STATES ; 
 int /*<<< orphan*/  QLA2XXX_DRIVER_NAME ; 
 int /*<<< orphan*/  QLA8044_CRB_DEV_STATE_INDEX ; 
#define  QLA8XXX_DEV_COLD 134 
#define  QLA8XXX_DEV_FAILED 133 
#define  QLA8XXX_DEV_INITIALIZING 132 
#define  QLA8XXX_DEV_NEED_QUIESCENT 131 
#define  QLA8XXX_DEV_NEED_RESET 130 
#define  QLA8XXX_DEV_QUIESCENT 129 
#define  QLA8XXX_DEV_READY 128 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC4 (struct scsi_qla_host*) ; 
 int FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int FUNC10 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC14 (unsigned long,unsigned long) ; 

int
FUNC15(struct scsi_qla_host *vha)
{
	uint32_t dev_state;
	int rval = QLA_SUCCESS;
	unsigned long dev_init_timeout;
	struct qla_hw_data *ha = vha->hw;

	rval = FUNC11(vha);
	if (rval == QLA_FUNCTION_FAILED)
		goto exit_error;

	dev_state = FUNC10(vha, QLA8044_CRB_DEV_STATE_INDEX);
	FUNC2(ql_dbg_p3p, vha, 0xb0ce,
	    "Device state is 0x%x = %s\n",
	    dev_state, dev_state < MAX_STATES ?
	    FUNC1(dev_state) : "Unknown");

	/* wait for 30 seconds for device to go ready */
	dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout * HZ);

	FUNC6(ha);

	while (1) {
		if (FUNC14(jiffies, dev_init_timeout)) {
			if (FUNC4(vha) == QLA_SUCCESS) {
				FUNC3(ql_log_warn, vha, 0xb0cf,
				    "%s: Device Init Failed 0x%x = %s\n",
				    QLA2XXX_DRIVER_NAME, dev_state,
				    dev_state < MAX_STATES ?
				    FUNC1(dev_state) : "Unknown");
				FUNC12(vha,
				    QLA8044_CRB_DEV_STATE_INDEX,
				    QLA8XXX_DEV_FAILED);
			}
		}

		dev_state = FUNC10(vha, QLA8044_CRB_DEV_STATE_INDEX);
		FUNC3(ql_log_info, vha, 0xb0d0,
		    "Device state is 0x%x = %s\n",
		    dev_state, dev_state < MAX_STATES ?
		    FUNC1(dev_state) : "Unknown");

		/* NOTE: Make sure idc unlocked upon exit of switch statement */
		switch (dev_state) {
		case QLA8XXX_DEV_READY:
			ha->flags.nic_core_reset_owner = 0;
			goto exit;
		case QLA8XXX_DEV_COLD:
			rval = FUNC5(vha);
			break;
		case QLA8XXX_DEV_INITIALIZING:
			FUNC7(ha);
			FUNC0(1000);
			FUNC6(ha);
			break;
		case QLA8XXX_DEV_NEED_RESET:
			/* For ISP8044, if NEED_RESET is set by any driver,
			 * it should be honored, irrespective of IDC_CTRL
			 * DONTRESET_BIT0 */
			FUNC9(vha);
			break;
		case QLA8XXX_DEV_NEED_QUIESCENT:
			/* idc locked/unlocked in handler */
			FUNC8(vha);

			/* Reset the init timeout after qsnt handler */
			dev_init_timeout = jiffies +
			    (ha->fcoe_reset_timeout * HZ);
			break;
		case QLA8XXX_DEV_QUIESCENT:
			FUNC3(ql_log_info, vha, 0xb0d1,
			    "HW State: QUIESCENT\n");

			FUNC7(ha);
			FUNC0(1000);
			FUNC6(ha);

			/* Reset the init timeout after qsnt handler */
			dev_init_timeout = jiffies +
			    (ha->fcoe_reset_timeout * HZ);
			break;
		case QLA8XXX_DEV_FAILED:
			ha->flags.nic_core_reset_owner = 0;
			FUNC7(ha);
			FUNC13(vha);
			rval = QLA_FUNCTION_FAILED;
			FUNC6(ha);
			goto exit;
		default:
			FUNC7(ha);
			FUNC13(vha);
			rval = QLA_FUNCTION_FAILED;
			FUNC6(ha);
			goto exit;
		}
	}
exit:
	FUNC7(ha);

exit_error:
	return rval;
}