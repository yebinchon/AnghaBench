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
struct TYPE_2__ {int /*<<< orphan*/  tgt_mask_reg; } ;
struct qla_hw_data {int interrupts_on; int /*<<< orphan*/  hardware_lock; TYPE_1__ nx_legacy_intr; int /*<<< orphan*/  pdev; } ;
typedef  int /*<<< orphan*/  scsi_qla_host_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  LEG_INTR_MASK_OFFSET ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct qla_hw_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct qla_hw_data *ha)
{
	scsi_qla_host_t *vha = FUNC1(ha->pdev);

	FUNC3(vha);
	FUNC5(&ha->hardware_lock);
	if (FUNC0(ha))
		FUNC2(ha, LEG_INTR_MASK_OFFSET, 0);
	else
		FUNC4(ha, ha->nx_legacy_intr.tgt_mask_reg, 0xfbff);
	FUNC6(&ha->hardware_lock);
	ha->interrupts_on = 1;
}