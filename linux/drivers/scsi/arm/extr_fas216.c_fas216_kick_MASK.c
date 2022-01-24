#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int dummy; } ;
struct TYPE_20__ {TYPE_1__* device; } ;
struct TYPE_17__ {int /*<<< orphan*/  this_residual; int /*<<< orphan*/  ptr; } ;
struct TYPE_18__ {TYPE_3__ SCp; scalar_t__ disconnectable; } ;
struct TYPE_16__ {int /*<<< orphan*/  disconnected; int /*<<< orphan*/  issue; } ;
struct TYPE_19__ {TYPE_4__ scsi; TYPE_6__* SCpnt; TYPE_2__ queues; int /*<<< orphan*/  busyluns; struct scsi_cmnd* origSCpnt; struct scsi_cmnd* reqSCpnt; struct scsi_cmnd* rstSCpnt; } ;
struct TYPE_15__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_5__ FAS216_Info ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DISABLESEL ; 
 int /*<<< orphan*/  CMD_ENABLESEL ; 
 int LOG_CONNECT ; 
 int LOG_MESSAGES ; 
#define  TYPE_OTHER 130 
#define  TYPE_QUEUE 129 
#define  TYPE_RESET 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 struct scsi_cmnd* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(FAS216_Info *info)
{
	struct scsi_cmnd *SCpnt = NULL;
#define TYPE_OTHER	0
#define TYPE_RESET	1
#define TYPE_QUEUE	2
	int where_from = TYPE_OTHER;

	FUNC1(info);

	/*
	 * Obtain the next command to process.
	 */
	do {
		if (info->rstSCpnt) {
			SCpnt = info->rstSCpnt;
			/* don't remove it */
			where_from = TYPE_RESET;
			break;
		}

		if (info->reqSCpnt) {
			SCpnt = info->reqSCpnt;
			info->reqSCpnt = NULL;
			break;
		}

		if (info->origSCpnt) {
			SCpnt = info->origSCpnt;
			info->origSCpnt = NULL;
			break;
		}

		/* retrieve next command */
		if (!SCpnt) {
			SCpnt = FUNC8(&info->queues.issue,
						     info->busyluns);
			where_from = TYPE_QUEUE;
			break;
		}
	} while (0);

	if (!SCpnt) {
		/*
		 * no command pending, so enable reselection.
		 */
		FUNC2(info, CMD_ENABLESEL);
		return;
	}

	/*
	 * We're going to start a command, so disable reselection
	 */
	FUNC2(info, CMD_DISABLESEL);

	if (info->scsi.disconnectable && info->SCpnt) {
		FUNC4(info, LOG_CONNECT,
			"moved command for %d to disconnected queue",
			info->SCpnt->device->id);
		FUNC7(&info->queues.disconnected, info->SCpnt);
		info->scsi.disconnectable = 0;
		info->SCpnt = NULL;
	}

	FUNC5(info, LOG_CONNECT | LOG_MESSAGES, SCpnt,
			   "starting");

	switch (where_from) {
	case TYPE_QUEUE:
		FUNC0(info, SCpnt);
		/* fall through */
	case TYPE_OTHER:
		FUNC6(info, SCpnt);
		break;
	case TYPE_RESET:
		FUNC3(info, SCpnt);
		break;
	}

	FUNC4(info, LOG_CONNECT, "select: data pointers [%p, %X]",
		info->scsi.SCp.ptr, info->scsi.SCp.this_residual);

	/*
	 * should now get either DISCONNECT or
	 * (FUNCTION DONE with BUS SERVICE) interrupt
	 */
}