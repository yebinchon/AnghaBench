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
struct TYPE_2__ {scalar_t__ init_done; } ;
struct scsi_qla_host {TYPE_1__ flags; struct qla_hw_data* hw; } ;
struct qla_hw_data {int portnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA8044_CRB_DRV_ACTIVE_INDEX ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  ql2xdontresethba ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int FUNC6 (struct scsi_qla_host*) ; 

__attribute__((used)) static int
FUNC7(struct scsi_qla_host *vha)
{
	uint32_t drv_active;
	int rval = QLA_SUCCESS;
	struct qla_hw_data *ha = vha->hw;

	if (vha->flags.init_done)
		goto exit_update_idc_reg;

	FUNC2(ha);
	FUNC5(vha);

	drv_active = FUNC4(vha,
	    QLA8044_CRB_DRV_ACTIVE_INDEX);

	/* If we are the first driver to load and
	 * ql2xdontresethba is not set, clear IDC_CTRL BIT0. */
	if ((drv_active == (1 << ha->portnum)) && !ql2xdontresethba)
		FUNC1(vha);

	rval = FUNC6(vha);
	if (rval == QLA_FUNCTION_FAILED)
		FUNC0(ha);
	FUNC3(ha);

exit_update_idc_reg:
	return rval;
}