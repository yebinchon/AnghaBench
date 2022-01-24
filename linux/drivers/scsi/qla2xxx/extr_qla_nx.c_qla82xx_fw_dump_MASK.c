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
struct TYPE_6__ {int isp82xx_no_md_cap; } ;
struct qla_hw_data {TYPE_1__ flags; int /*<<< orphan*/  allow_cna_fw_dump; } ;
struct TYPE_7__ {int /*<<< orphan*/  host; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(scsi_qla_host_t *vha, int hardware_locked)
{
	struct qla_hw_data *ha = vha->hw;

	if (!ha->allow_cna_fw_dump)
		return;

	FUNC4(vha->host);
	ha->flags.isp82xx_no_md_cap = 1;
	FUNC1(ha);
	FUNC3(vha);
	FUNC2(ha);
	FUNC0(vha);
	FUNC5(vha->host);
}