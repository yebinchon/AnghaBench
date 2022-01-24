#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_15__ {int /*<<< orphan*/  nic_core_reset_owner; int /*<<< orphan*/  quiesce_owner; } ;
struct qla_hw_data {unsigned long fcoe_dev_init_timeout; TYPE_1__ flags; int /*<<< orphan*/  portnum; } ;
struct TYPE_16__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 unsigned long HZ ; 
 int /*<<< orphan*/  IDC_AUDIT_COMPLETION ; 
 int /*<<< orphan*/  QLA83XX_IDC_DEV_STATE ; 
#define  QLA8XXX_BAD_VALUE 135 
#define  QLA8XXX_DEV_COLD 134 
#define  QLA8XXX_DEV_FAILED 133 
#define  QLA8XXX_DEV_INITIALIZING 132 
#define  QLA8XXX_DEV_NEED_QUIESCENT 131 
#define  QLA8XXX_DEV_NEED_RESET 130 
#define  QLA8XXX_DEV_QUIESCENT 129 
#define  QLA8XXX_DEV_READY 128 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ql2xdontresethba ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 

int
FUNC13(scsi_qla_host_t *base_vha)
{
	struct qla_hw_data *ha = base_vha->hw;
	int rval = QLA_SUCCESS;
	unsigned long dev_init_timeout;
	uint32_t dev_state;

	/* Wait for MAX-INIT-TIMEOUT for the device to go ready */
	dev_init_timeout = jiffies + (ha->fcoe_dev_init_timeout * HZ);

	while (1) {

		if (FUNC12(jiffies, dev_init_timeout)) {
			FUNC3(ql_log_warn, base_vha, 0xb06e,
			    "Initialization TIMEOUT!\n");
			/* Init timeout. Disable further NIC Core
			 * communication.
			 */
			FUNC10(base_vha, QLA83XX_IDC_DEV_STATE,
				QLA8XXX_DEV_FAILED);
			FUNC3(ql_log_info, base_vha, 0xb06f,
			    "HW State: FAILED.\n");
		}

		FUNC9(base_vha, QLA83XX_IDC_DEV_STATE, &dev_state);
		switch (dev_state) {
		case QLA8XXX_DEV_READY:
			if (ha->flags.nic_core_reset_owner)
				FUNC5(base_vha,
				    IDC_AUDIT_COMPLETION);
			ha->flags.nic_core_reset_owner = 0;
			FUNC2(ql_dbg_p3p, base_vha, 0xb070,
			    "Reset_owner reset by 0x%x.\n",
			    ha->portnum);
			goto exit;
		case QLA8XXX_DEV_COLD:
			if (ha->flags.nic_core_reset_owner)
				rval = FUNC4(base_vha);
			else {
			/* Wait for AEN to change device-state */
				FUNC7(base_vha, 0);
				FUNC1(1000);
				FUNC6(base_vha, 0);
			}
			break;
		case QLA8XXX_DEV_INITIALIZING:
			/* Wait for AEN to change device-state */
			FUNC7(base_vha, 0);
			FUNC1(1000);
			FUNC6(base_vha, 0);
			break;
		case QLA8XXX_DEV_NEED_RESET:
			if (!ql2xdontresethba && ha->flags.nic_core_reset_owner)
				FUNC8(base_vha);
			else {
				/* Wait for AEN to change device-state */
				FUNC7(base_vha, 0);
				FUNC1(1000);
				FUNC6(base_vha, 0);
			}
			/* reset timeout value after need reset handler */
			dev_init_timeout = jiffies +
			    (ha->fcoe_dev_init_timeout * HZ);
			break;
		case QLA8XXX_DEV_NEED_QUIESCENT:
			/* XXX: DEBUG for now */
			FUNC7(base_vha, 0);
			FUNC1(1000);
			FUNC6(base_vha, 0);
			break;
		case QLA8XXX_DEV_QUIESCENT:
			/* XXX: DEBUG for now */
			if (ha->flags.quiesce_owner)
				goto exit;

			FUNC7(base_vha, 0);
			FUNC1(1000);
			FUNC6(base_vha, 0);
			dev_init_timeout = jiffies +
			    (ha->fcoe_dev_init_timeout * HZ);
			break;
		case QLA8XXX_DEV_FAILED:
			if (ha->flags.nic_core_reset_owner)
				FUNC5(base_vha,
				    IDC_AUDIT_COMPLETION);
			ha->flags.nic_core_reset_owner = 0;
			FUNC0(base_vha);
			FUNC7(base_vha, 0);
			FUNC11(base_vha);
			rval = QLA_FUNCTION_FAILED;
			FUNC6(base_vha, 0);
			goto exit;
		case QLA8XXX_BAD_VALUE:
			FUNC7(base_vha, 0);
			FUNC1(1000);
			FUNC6(base_vha, 0);
			break;
		default:
			FUNC3(ql_log_warn, base_vha, 0xb071,
			    "Unknown Device State: %x.\n", dev_state);
			FUNC7(base_vha, 0);
			FUNC11(base_vha);
			rval = QLA_FUNCTION_FAILED;
			FUNC6(base_vha, 0);
			goto exit;
		}
	}

exit:
	return rval;
}