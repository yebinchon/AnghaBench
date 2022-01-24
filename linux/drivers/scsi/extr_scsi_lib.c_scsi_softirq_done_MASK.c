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
struct scsi_cmnd {int allowed; scalar_t__ jiffies_at_alloc; TYPE_1__* device; scalar_t__ result; int /*<<< orphan*/  eh_entry; } ;
struct request {int timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  ioerr_cnt; int /*<<< orphan*/  iodone_cnt; } ;

/* Variables and functions */
#define  ADD_TO_MLQUEUE 130 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_ERR ; 
#define  NEEDS_RETRY 129 
 int /*<<< orphan*/  SCSI_MLQUEUE_DEVICE_BUSY ; 
 int /*<<< orphan*/  SCSI_MLQUEUE_EH_RETRY ; 
#define  SUCCESS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct scsi_cmnd* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*,unsigned long) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct request *rq)
{
	struct scsi_cmnd *cmd = FUNC2(rq);
	unsigned long wait_for = (cmd->allowed + 1) * rq->timeout;
	int disposition;

	FUNC0(&cmd->eh_entry);

	FUNC1(&cmd->device->iodone_cnt);
	if (cmd->result)
		FUNC1(&cmd->device->ioerr_cnt);

	disposition = FUNC4(cmd);
	if (disposition != SUCCESS &&
	    FUNC9(cmd->jiffies_at_alloc + wait_for, jiffies)) {
		FUNC3(KERN_ERR, cmd,
			    "timing out command, waited %lus\n",
			    wait_for/HZ);
		disposition = SUCCESS;
	}

	FUNC7(cmd, disposition);

	switch (disposition) {
		case SUCCESS:
			FUNC6(cmd);
			break;
		case NEEDS_RETRY:
			FUNC8(cmd, SCSI_MLQUEUE_EH_RETRY);
			break;
		case ADD_TO_MLQUEUE:
			FUNC8(cmd, SCSI_MLQUEUE_DEVICE_BUSY);
			break;
		default:
			FUNC5(cmd);
			break;
	}
}