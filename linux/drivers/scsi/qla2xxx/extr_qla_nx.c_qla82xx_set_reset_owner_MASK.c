#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {int nic_core_reset_owner; } ;
struct qla_hw_data {int /*<<< orphan*/  portnum; TYPE_1__ flags; } ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ MAX_STATES ; 
 int /*<<< orphan*/  QLA8044_CRB_DEV_STATE_INDEX ; 
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA8XXX_DEV_NEED_RESET ; 
 scalar_t__ QLA8XXX_DEV_READY ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_p3p ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	uint32_t dev_state = 0;

	if (FUNC1(ha))
		dev_state = FUNC7(ha, QLA82XX_CRB_DEV_STATE);
	else if (FUNC0(ha))
		dev_state = FUNC5(vha, QLA8044_CRB_DEV_STATE_INDEX);

	if (dev_state == QLA8XXX_DEV_READY) {
		FUNC4(ql_log_info, vha, 0xb02f,
		    "HW State: NEED RESET\n");
		if (FUNC1(ha)) {
			FUNC8(ha, QLA82XX_CRB_DEV_STATE,
			    QLA8XXX_DEV_NEED_RESET);
			ha->flags.nic_core_reset_owner = 1;
			FUNC3(ql_dbg_p3p, vha, 0xb030,
			    "reset_owner is 0x%x\n", ha->portnum);
		} else if (FUNC0(ha))
			FUNC6(vha, QLA8044_CRB_DEV_STATE_INDEX,
			    QLA8XXX_DEV_NEED_RESET);
	} else
		FUNC4(ql_log_info, vha, 0xb031,
		    "Device state is 0x%x = %s.\n",
		    dev_state,
		    dev_state < MAX_STATES ? FUNC2(dev_state) : "Unknown");
}