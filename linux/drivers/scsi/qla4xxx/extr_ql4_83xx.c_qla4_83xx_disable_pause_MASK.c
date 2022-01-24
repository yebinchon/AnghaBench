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
struct scsi_qla_host {TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 

void FUNC5(struct scsi_qla_host *ha)
{
	ha->isp_ops->idc_lock(ha);
	/* Before disabling pause frames, ensure that eport is not in reset */
	FUNC2(ha);
	FUNC1(ha);
	FUNC0(ha);
	ha->isp_ops->idc_unlock(ha);
}