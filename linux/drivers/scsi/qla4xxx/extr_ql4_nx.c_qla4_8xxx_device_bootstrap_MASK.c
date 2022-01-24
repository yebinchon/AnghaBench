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
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int (* need_reset ) (struct scsi_qla_host*) ;int (* restart_firmware ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* rom_lock_recovery ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_FW_RECOVERY ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA8XXX_DEV_FAILED ; 
 int /*<<< orphan*/  QLA8XXX_DEV_INITIALIZING ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int /*<<< orphan*/  QLA8XXX_PEG_ALIVE_COUNTER ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_qla_host*) ; 
 int FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC14(struct scsi_qla_host *ha)
{
	int rval = QLA_ERROR;
	int i;
	uint32_t old_count, count;
	int need_reset = 0;

	need_reset = ha->isp_ops->need_reset(ha);

	if (need_reset) {
		/* We are trying to perform a recovery here. */
		if (FUNC13(AF_FW_RECOVERY, &ha->flags))
			ha->isp_ops->rom_lock_recovery(ha);
	} else  {
		old_count = FUNC5(ha, QLA8XXX_PEG_ALIVE_COUNTER);
		for (i = 0; i < 10; i++) {
			FUNC1(200);
			count = FUNC5(ha,
						    QLA8XXX_PEG_ALIVE_COUNTER);
			if (count != old_count) {
				rval = QLA_SUCCESS;
				goto dev_ready;
			}
		}
		ha->isp_ops->rom_lock_recovery(ha);
	}

	/* set to DEV_INITIALIZING */
	FUNC2(KERN_INFO, ha, "HW State: INITIALIZING\n");
	FUNC6(ha, QLA8XXX_CRB_DEV_STATE,
			    QLA8XXX_DEV_INITIALIZING);

	ha->isp_ops->idc_unlock(ha);

	if (FUNC0(ha))
		FUNC4(ha);

	rval = ha->isp_ops->restart_firmware(ha);
	ha->isp_ops->idc_lock(ha);

	if (rval != QLA_SUCCESS) {
		FUNC2(KERN_INFO, ha, "HW State: FAILED\n");
		FUNC3(ha);
		FUNC6(ha, QLA8XXX_CRB_DEV_STATE,
				    QLA8XXX_DEV_FAILED);
		return rval;
	}

dev_ready:
	FUNC2(KERN_INFO, ha, "HW State: READY\n");
	FUNC6(ha, QLA8XXX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

	return rval;
}