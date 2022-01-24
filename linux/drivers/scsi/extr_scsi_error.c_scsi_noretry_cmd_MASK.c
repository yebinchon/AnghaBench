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
struct scsi_cmnd {TYPE_1__* request; int /*<<< orphan*/  result; } ;
struct TYPE_2__ {int cmd_flags; } ;

/* Variables and functions */
 scalar_t__ CHECK_CONDITION ; 
 int /*<<< orphan*/  COMMAND_COMPLETE ; 
#define  DID_BUS_BUSY 133 
#define  DID_ERROR 132 
#define  DID_OK 131 
#define  DID_PARITY 130 
#define  DID_SOFT_ERROR 129 
#define  DID_TIME_OUT 128 
 int REQ_FAILFAST_DEV ; 
 int REQ_FAILFAST_DRIVER ; 
 int REQ_FAILFAST_TRANSPORT ; 
 scalar_t__ RESERVATION_CONFLICT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct scsi_cmnd *scmd)
{
	switch (FUNC1(scmd->result)) {
	case DID_OK:
		break;
	case DID_TIME_OUT:
		goto check_type;
	case DID_BUS_BUSY:
		return (scmd->request->cmd_flags & REQ_FAILFAST_TRANSPORT);
	case DID_PARITY:
		return (scmd->request->cmd_flags & REQ_FAILFAST_DEV);
	case DID_ERROR:
		if (FUNC2(scmd->result) == COMMAND_COMPLETE &&
		    FUNC3(scmd->result) == RESERVATION_CONFLICT)
			return 0;
		/* fall through */
	case DID_SOFT_ERROR:
		return (scmd->request->cmd_flags & REQ_FAILFAST_DRIVER);
	}

	if (FUNC3(scmd->result) != CHECK_CONDITION)
		return 0;

check_type:
	/*
	 * assume caller has checked sense and determined
	 * the check condition was retryable.
	 */
	if (scmd->request->cmd_flags & REQ_FAILFAST_DEV ||
	    FUNC0(scmd->request))
		return 1;
	else
		return 0;
}