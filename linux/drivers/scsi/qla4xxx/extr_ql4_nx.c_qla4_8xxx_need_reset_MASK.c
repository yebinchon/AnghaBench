#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct scsi_qla_host {int func_num; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_EEH_BUSY ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DRV_ACTIVE ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DRV_STATE ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int FUNC2 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

inline int FUNC4(struct scsi_qla_host *ha)
{
	uint32_t drv_state, drv_active;
	int rval;

	drv_active = FUNC2(ha, QLA8XXX_CRB_DRV_ACTIVE);
	drv_state = FUNC2(ha, QLA8XXX_CRB_DRV_STATE);

	/*
	 * For ISP8324 and ISP8042, drv_active register has 1 bit per function,
	 * shift 1 by func_num to set a bit for the function.
	 * For ISP8022, drv_active has 4 bits per function
	 */
	if (FUNC0(ha) || FUNC1(ha))
		rval = drv_state & (1 << ha->func_num);
	else
		rval = drv_state & (1 << (ha->func_num * 4));

	if ((FUNC3(AF_EEH_BUSY, &ha->flags)) && drv_active)
		rval = 1;

	return rval;
}