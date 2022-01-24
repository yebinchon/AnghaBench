#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int cmd_len; int /*<<< orphan*/ * cmnd; TYPE_3__* device; } ;
struct message {int length; int fifo; int /*<<< orphan*/ * msg; } ;
struct TYPE_15__ {int /*<<< orphan*/  msgs; int /*<<< orphan*/  phase; } ;
struct TYPE_12__ {int /*<<< orphan*/  select_timeout; } ;
struct TYPE_16__ {TYPE_4__ scsi; TYPE_2__* host; TYPE_1__ ifcfg; } ;
struct TYPE_14__ {scalar_t__ id; } ;
struct TYPE_13__ {int /*<<< orphan*/  host_no; } ;
typedef  TYPE_5__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int CFIS_CF ; 
 int CMD_FLUSHFIFO ; 
 int CMD_NOP ; 
 int CMD_SELECTATN ; 
 int CMD_SELECTATN3 ; 
 int CMD_SELECTATNSTOP ; 
 int CMD_WITHDMA ; 
 int /*<<< orphan*/  PHASE_SELSTEPS ; 
 int /*<<< orphan*/  REG_CFIS ; 
 int /*<<< orphan*/  REG_FF ; 
 int /*<<< orphan*/  REG_SDID ; 
 int /*<<< orphan*/  REG_STIM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct message* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static void FUNC9(FAS216_Info *info, struct scsi_cmnd *SCpnt)
{
	int tot_msglen;

	/* following what the ESP driver says */
	FUNC3(info, 0);
	FUNC1(info, CMD_NOP | CMD_WITHDMA);

	/* flush FIFO */
	FUNC1(info, CMD_FLUSHFIFO);

	/* load bus-id and timeout */
	FUNC5(info, REG_SDID, FUNC0(SCpnt->device->id));
	FUNC5(info, REG_STIM, info->ifcfg.select_timeout);

	/* synchronous transfers */
	FUNC4(info, SCpnt->device->id);

	tot_msglen = FUNC7(&info->scsi.msgs);

#ifdef DEBUG_MESSAGES
	{
		struct message *msg;
		int msgnr = 0, i;

		printk("scsi%d.%c: message out: ",
			info->host->host_no, '0' + SCpnt->device->id);
		while ((msg = msgqueue_getmsg(&info->scsi.msgs, msgnr++)) != NULL) {
			printk("{ ");
			for (i = 0; i < msg->length; i++)
				printk("%02x ", msg->msg[i]);
			printk("} ");
		}
		printk("\n");
	}
#endif

	if (tot_msglen == 1 || tot_msglen == 3) {
		/*
		 * We have an easy message length to send...
		 */
		struct message *msg;
		int msgnr = 0, i;

		info->scsi.phase = PHASE_SELSTEPS;

		/* load message bytes */
		while ((msg = FUNC6(&info->scsi.msgs, msgnr++)) != NULL) {
			for (i = 0; i < msg->length; i++)
				FUNC5(info, REG_FF, msg->msg[i]);
			msg->fifo = tot_msglen - (FUNC2(info, REG_CFIS) & CFIS_CF);
		}

		/* load command */
		for (i = 0; i < SCpnt->cmd_len; i++)
			FUNC5(info, REG_FF, SCpnt->cmnd[i]);

		if (tot_msglen == 1)
			FUNC1(info, CMD_SELECTATN);
		else
			FUNC1(info, CMD_SELECTATN3);
	} else {
		/*
		 * We have an unusual number of message bytes to send.
		 *  Load first byte into fifo, and issue SELECT with ATN and
		 *  stop steps.
		 */
		struct message *msg = FUNC6(&info->scsi.msgs, 0);

		FUNC5(info, REG_FF, msg->msg[0]);
		msg->fifo = 1;

		FUNC1(info, CMD_SELECTATNSTOP);
	}
}