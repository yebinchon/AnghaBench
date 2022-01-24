#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {int /*<<< orphan*/  hardware_lock; TYPE_2__* isp_ops; } ;
struct queue_entry {int dummy; } ;
struct TYPE_3__ {int entryCount; int /*<<< orphan*/  entryType; } ;
struct qla4_marker_entry {int /*<<< orphan*/  lun; void* modifier; void* target; TYPE_1__ hdr; } ;
struct ddb_entry {int /*<<< orphan*/  fw_ddb_index; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* queue_iocb ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ET_MARKER ; 
 int QLA_ERROR ; 
 scalar_t__ QLA_SUCCESS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*,struct queue_entry**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct scsi_qla_host *ha,
	struct ddb_entry *ddb_entry, uint64_t lun, uint16_t mrkr_mod)
{
	struct qla4_marker_entry *marker_entry;
	unsigned long flags = 0;
	uint8_t status = QLA_SUCCESS;

	/* Acquire hardware specific lock */
	FUNC3(&ha->hardware_lock, flags);

	/* Get pointer to the queue entry for the marker */
	if (FUNC2(ha, (struct queue_entry **) &marker_entry) !=
	    QLA_SUCCESS) {
		status = QLA_ERROR;
		goto exit_send_marker;
	}

	/* Put the marker in the request queue */
	marker_entry->hdr.entryType = ET_MARKER;
	marker_entry->hdr.entryCount = 1;
	marker_entry->target = FUNC0(ddb_entry->fw_ddb_index);
	marker_entry->modifier = FUNC0(mrkr_mod);
	FUNC1(lun, &marker_entry->lun);
	FUNC6();

	/* Tell ISP it's got a new I/O request */
	ha->isp_ops->queue_iocb(ha);

exit_send_marker:
	FUNC4(&ha->hardware_lock, flags);
	return status;
}