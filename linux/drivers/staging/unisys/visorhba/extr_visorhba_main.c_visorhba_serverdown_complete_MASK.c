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
struct visorhba_devdata {int serverdown; int serverchangingstate; int /*<<< orphan*/  privlock; int /*<<< orphan*/  idr; struct scsipending* pending; int /*<<< orphan*/  thread; } ;
struct uiscmdrsp {int result; int /*<<< orphan*/  (* scsi_done ) (struct uiscmdrsp*) ;} ;
struct scsipending {int cmdtype; struct uiscmdrsp* sent; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct uiscmdrsp*) ;} ;

/* Variables and functions */
#define  CMD_SCSITASKMGMT_TYPE 129 
#define  CMD_SCSI_TYPE 128 
 int DID_RESET ; 
 int MAX_PENDING_REQUESTS ; 
 int /*<<< orphan*/  TASK_MGMT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct uiscmdrsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uiscmdrsp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct visorhba_devdata *devdata)
{
	int i;
	struct scsipending *pendingdel = NULL;
	struct scsi_cmnd *scsicmd = NULL;
	struct uiscmdrsp *cmdrsp;
	unsigned long flags;

	/* Stop using the IOVM response queue (queue should be drained
	 * by the end)
	 */
	FUNC4(devdata->thread);

	/* Fail commands that weren't completed */
	FUNC1(&devdata->privlock, flags);
	for (i = 0; i < MAX_PENDING_REQUESTS; i++) {
		pendingdel = &devdata->pending[i];
		switch (pendingdel->cmdtype) {
		case CMD_SCSI_TYPE:
			scsicmd = pendingdel->sent;
			scsicmd->result = DID_RESET << 16;
			if (scsicmd->scsi_done)
				scsicmd->scsi_done(scsicmd);
			break;
		case CMD_SCSITASKMGMT_TYPE:
			cmdrsp = pendingdel->sent;
			FUNC0(&devdata->idr, cmdrsp,
						  TASK_MGMT_FAILED);
			break;
		default:
			break;
		}
		pendingdel->cmdtype = 0;
		pendingdel->sent = NULL;
	}
	FUNC2(&devdata->privlock, flags);

	devdata->serverdown = true;
	devdata->serverchangingstate = false;
}