#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_2__* isp_ops; TYPE_1__ flags; int /*<<< orphan*/  pdev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* disable_intrs ) (struct qla_hw_data*) ;} ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ FUNC3 (int) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;
	int rval = QLA_FUNCTION_FAILED;

	if (FUNC3(FUNC0(ha->pdev) &&
	    ha->flags.pci_channel_io_perm_failure))
		return rval;

	ha->isp_ops->disable_intrs(ha);
	FUNC1(vha);

	return QLA_SUCCESS;
}