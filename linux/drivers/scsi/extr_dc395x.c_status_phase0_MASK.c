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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ScsiReqBlk {int /*<<< orphan*/  state; void* end_message; void* target_status; TYPE_2__* cmd; } ;
struct AdapterCtlBlk {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {scalar_t__ lun; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 void* FUNC0 (struct AdapterCtlBlk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterCtlBlk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DO_DATALATCH ; 
 int /*<<< orphan*/  PH_BUS_FREE ; 
 int /*<<< orphan*/  SCMD_MSGACCEPT ; 
 int /*<<< orphan*/  SRB_COMPLETED ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_COMMAND ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRM_S1040_SCSI_FIFO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct AdapterCtlBlk *acb, struct ScsiReqBlk *srb,
		u16 *pscsi_status)
{
	FUNC3(DBG_0, "status_phase0: (0x%p) <%02i-%i>\n",
		srb->cmd, srb->cmd->device->id, (u8)srb->cmd->device->lun);
	srb->target_status = FUNC0(acb, TRM_S1040_SCSI_FIFO);
	srb->end_message = FUNC0(acb, TRM_S1040_SCSI_FIFO);	/* get message */
	srb->state = SRB_COMPLETED;
	*pscsi_status = PH_BUS_FREE;	/*.. initial phase */
	FUNC1(acb, TRM_S1040_SCSI_CONTROL, DO_DATALATCH);	/* it's important for atn stop */
	FUNC2(acb, TRM_S1040_SCSI_COMMAND, SCMD_MSGACCEPT);
}