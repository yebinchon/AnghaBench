#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {scalar_t__ mrb_index; int iocb_cnt; int /*<<< orphan*/  hardware_lock; TYPE_3__* isp_ops; struct mrb** active_mrb_array; } ;
struct queue_entry {int dummy; } ;
struct mrb {int iocb_cnt; scalar_t__ mbox_cmd; TYPE_2__* mbox; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* queue_iocb ) (struct scsi_qla_host*) ;} ;
struct TYPE_4__ {int entryCount; int /*<<< orphan*/  entryType; } ;
struct TYPE_5__ {int /*<<< orphan*/  in_mbox; TYPE_1__ hdr; scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET_MBOX_CMD ; 
 scalar_t__ MAX_MRB ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC1 (struct scsi_qla_host*,struct queue_entry**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct scsi_qla_host *ha, struct mrb *mrb,
				  uint32_t *in_mbox)
{
	int rval = QLA_SUCCESS;
	uint32_t i;
	unsigned long flags;
	uint32_t index = 0;

	/* Acquire hardware specific lock */
	FUNC2(&ha->hardware_lock, flags);

	/* Get pointer to the queue entry for the marker */
	rval = FUNC1(ha, (struct queue_entry **) &(mrb->mbox));
	if (rval != QLA_SUCCESS)
		goto exit_mbox_iocb;

	index = ha->mrb_index;
	/* get valid mrb index*/
	for (i = 0; i < MAX_MRB; i++) {
		index++;
		if (index == MAX_MRB)
			index = 1;
		if (ha->active_mrb_array[index] == NULL) {
			ha->mrb_index = index;
			break;
		}
	}

	mrb->iocb_cnt = 1;
	ha->active_mrb_array[index] = mrb;
	mrb->mbox->handle = index;
	mrb->mbox->hdr.entryType = ET_MBOX_CMD;
	mrb->mbox->hdr.entryCount = mrb->iocb_cnt;
	FUNC0(mrb->mbox->in_mbox, in_mbox, 32);
	mrb->mbox_cmd = in_mbox[0];
	FUNC5();

	ha->iocb_cnt += mrb->iocb_cnt;
	ha->isp_ops->queue_iocb(ha);
exit_mbox_iocb:
	FUNC3(&ha->hardware_lock, flags);
	return rval;
}