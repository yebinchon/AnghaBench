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
struct scsi_qla_host {int func_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA8XXX_CRB_DRV_STATE ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int FUNC2 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC4(struct scsi_qla_host *ha)
{
	uint32_t qsnt_state;

	qsnt_state = FUNC2(ha, QLA8XXX_CRB_DRV_STATE);

	/*
	 * For ISP8324 and ISP8042, drv_active register has 1 bit per function,
	 * shift 1 by func_num to set a bit for the function.
	 * For ISP8022, drv_active has 4 bits per function.
	 */
	if (FUNC0(ha) || FUNC1(ha))
		qsnt_state |= (1 << ha->func_num);
	else
		qsnt_state |= (2 << (ha->func_num * 4));

	FUNC3(ha, QLA8XXX_CRB_DRV_STATE, qsnt_state);
}