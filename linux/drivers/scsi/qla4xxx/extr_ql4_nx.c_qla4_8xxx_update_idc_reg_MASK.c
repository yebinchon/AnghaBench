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
struct scsi_qla_host {int func_num; TYPE_1__* isp_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INIT_DONE ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DRV_ACTIVE ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  ql4xdontresethba ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*) ; 
 int FUNC7 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC12(struct scsi_qla_host *ha)
{
	uint32_t drv_active;
	int rval = QLA_SUCCESS;

	if (FUNC11(AF_INIT_DONE, &ha->flags))
		goto exit_update_idc_reg;

	ha->isp_ops->idc_lock(ha);
	FUNC8(ha);

	/*
	 * If we are the first driver to load and
	 * ql4xdontresethba is not set, clear IDC_CTRL BIT0.
	 */
	if (FUNC1(ha) || FUNC2(ha)) {
		drv_active = FUNC7(ha, QLA8XXX_CRB_DRV_ACTIVE);
		if ((drv_active == (1 << ha->func_num)) && !ql4xdontresethba)
			FUNC4(ha);
	}

	if (FUNC0(ha)) {
		FUNC3(ha);
	} else if (FUNC1(ha) || FUNC2(ha)) {
		rval = FUNC5(ha);
		if (rval == QLA_ERROR)
			FUNC6(ha);
	}

	ha->isp_ops->idc_unlock(ha);

exit_update_idc_reg:
	return rval;
}