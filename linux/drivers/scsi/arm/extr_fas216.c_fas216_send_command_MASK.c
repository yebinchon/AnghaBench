#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int sent_command; } ;
struct TYPE_10__ {int /*<<< orphan*/  phase; TYPE_1__ SCp; } ;
struct TYPE_12__ {TYPE_2__ scsi; TYPE_3__* SCpnt; } ;
struct TYPE_11__ {int cmd_len; int /*<<< orphan*/ * cmnd; } ;
typedef  TYPE_4__ FAS216_Info ;

/* Variables and functions */
 int CMD_FLUSHFIFO ; 
 int CMD_NOP ; 
 int CMD_TRANSFERINFO ; 
 int CMD_WITHDMA ; 
 int /*<<< orphan*/  PHASE_COMMAND ; 
 int /*<<< orphan*/  REG_FF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(FAS216_Info *info)
{
	int i;

	FUNC0(info);

	FUNC1(info, CMD_NOP|CMD_WITHDMA);
	FUNC1(info, CMD_FLUSHFIFO);

	/* load command */
	for (i = info->scsi.SCp.sent_command; i < info->SCpnt->cmd_len; i++)
		FUNC2(info, REG_FF, info->SCpnt->cmnd[i]);

	FUNC1(info, CMD_TRANSFERINFO);

	info->scsi.phase = PHASE_COMMAND;
}