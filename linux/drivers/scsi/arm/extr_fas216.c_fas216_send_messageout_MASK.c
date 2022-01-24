#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct message {int length; unsigned int fifo; int /*<<< orphan*/ * msg; } ;
struct TYPE_8__ {int /*<<< orphan*/  phase; int /*<<< orphan*/  msgs; } ;
struct TYPE_9__ {TYPE_1__ scsi; } ;
typedef  TYPE_2__ FAS216_Info ;

/* Variables and functions */
 unsigned int CFIS_CF ; 
 int /*<<< orphan*/  CMD_FLUSHFIFO ; 
 int /*<<< orphan*/  CMD_TRANSFERINFO ; 
 int /*<<< orphan*/  NOP ; 
 int /*<<< orphan*/  PHASE_MSGOUT ; 
 int /*<<< orphan*/  REG_CFIS ; 
 int /*<<< orphan*/  REG_FF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct message* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(FAS216_Info *info, int start)
{
	unsigned int tot_msglen = FUNC5(&info->scsi.msgs);

	FUNC0(info);

	FUNC1(info, CMD_FLUSHFIFO);

	if (tot_msglen) {
		struct message *msg;
		int msgnr = 0;

		while ((msg = FUNC4(&info->scsi.msgs, msgnr++)) != NULL) {
			int i;

			for (i = start; i < msg->length; i++)
				FUNC3(info, REG_FF, msg->msg[i]);

			msg->fifo = tot_msglen - (FUNC2(info, REG_CFIS) & CFIS_CF);
			start = 0;
		}
	} else
		FUNC3(info, REG_FF, NOP);

	FUNC1(info, CMD_TRANSFERINFO);

	info->scsi.phase = PHASE_MSGOUT;
}