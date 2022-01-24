#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {TYPE_1__ flags; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  QLA82XX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA82XX_PEG_ALIVE_COUNTER ; 
 int /*<<< orphan*/  QLA8XXX_DEV_FAILED ; 
 int /*<<< orphan*/  QLA8XXX_DEV_INITIALIZING ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*) ; 
 int FUNC5 (struct qla_hw_data*) ; 
 scalar_t__ FUNC6 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(scsi_qla_host_t *vha)
{
	int rval = QLA_SUCCESS;
	int i;
	uint32_t old_count, count;
	struct qla_hw_data *ha = vha->hw;
	int need_reset = 0;

	need_reset = FUNC5(ha);

	if (need_reset) {
		/* We are trying to perform a recovery here. */
		if (ha->flags.isp82xx_fw_hung)
			FUNC7(ha);
	} else  {
		old_count = FUNC6(ha, QLA82XX_PEG_ALIVE_COUNTER);
		for (i = 0; i < 10; i++) {
			FUNC0(200);
			count = FUNC6(ha, QLA82XX_PEG_ALIVE_COUNTER);
			if (count != old_count) {
				rval = QLA_SUCCESS;
				goto dev_ready;
			}
		}
		FUNC7(ha);
	}

	/* set to DEV_INITIALIZING */
	FUNC1(ql_log_info, vha, 0x009e,
	    "HW State: INITIALIZING.\n");
	FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_INITIALIZING);

	FUNC4(ha);
	rval = FUNC8(vha);
	FUNC3(ha);

	if (rval != QLA_SUCCESS) {
		FUNC1(ql_log_fatal, vha, 0x00ad,
		    "HW State: FAILED.\n");
		FUNC2(ha);
		FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_FAILED);
		return rval;
	}

dev_ready:
	FUNC1(ql_log_info, vha, 0x00ae,
	    "HW State: READY.\n");
	FUNC9(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

	return QLA_SUCCESS;
}