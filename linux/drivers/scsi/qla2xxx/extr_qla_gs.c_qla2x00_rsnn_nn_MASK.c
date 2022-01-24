#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int dummy; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_disc ; 
 int FUNC3 (TYPE_1__*) ; 

int
FUNC4(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	if (FUNC0(ha) || FUNC1(ha)) {
		FUNC2(ql_dbg_disc, vha, 0x2050,
		    "RSNN_ID call unsupported on ISP2100/ISP2200.\n");
		return (QLA_SUCCESS);
	}

	return FUNC3(vha);
}