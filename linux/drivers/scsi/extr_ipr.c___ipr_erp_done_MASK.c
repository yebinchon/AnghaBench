#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  sense_buffer; TYPE_1__* device; } ;
struct ipr_resource_entry {int needs_sync_complete; scalar_t__ in_erp; } ;
struct TYPE_7__ {int /*<<< orphan*/  ioasc; } ;
struct TYPE_8__ {TYPE_2__ hdr; } ;
struct TYPE_9__ {TYPE_3__ ioasa; } ;
struct ipr_cmnd {TYPE_5__* hrrq; int /*<<< orphan*/  queue; scalar_t__ eh_comp; struct scsi_cmnd* scsi_cmd; int /*<<< orphan*/  sense_buffer; TYPE_4__ s; } ;
struct TYPE_10__ {int /*<<< orphan*/  hrrq_free_q; } ;
struct TYPE_6__ {struct ipr_resource_entry* hostdata; } ;

/* Variables and functions */
 int DID_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ipr_resource_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 

__attribute__((used)) static void FUNC9(struct ipr_cmnd *ipr_cmd)
{
	struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
	struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
	u32 ioasc = FUNC1(ipr_cmd->s.ioasa.hdr.ioasc);

	if (FUNC0(ioasc) > 0) {
		scsi_cmd->result |= (DID_ERROR << 16);
		FUNC6(KERN_ERR, scsi_cmd,
			    "Request Sense failed with IOASC: 0x%08X\n", ioasc);
	} else {
		FUNC5(scsi_cmd->sense_buffer, ipr_cmd->sense_buffer,
		       SCSI_SENSE_BUFFERSIZE);
	}

	if (res) {
		if (!FUNC3(res))
			res->needs_sync_complete = 1;
		res->in_erp = 0;
	}
	FUNC7(ipr_cmd->scsi_cmd);
	scsi_cmd->scsi_done(scsi_cmd);
	if (ipr_cmd->eh_comp)
		FUNC2(ipr_cmd->eh_comp);
	FUNC4(&ipr_cmd->queue, &ipr_cmd->hrrq->hrrq_free_q);
}