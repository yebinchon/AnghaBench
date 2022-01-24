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
struct scsi_cmnd {int /*<<< orphan*/ * host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  commands; } ;
struct TYPE_3__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FAILED ; 
 TYPE_2__* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  ISSUE_SC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PORTA ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct scsi_cmnd* FUNC5 (int /*<<< orphan*/ *,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *SCpnt)
{
	struct Scsi_Host *shpnt = SCpnt->device->host;
	struct scsi_cmnd *ptr;
	unsigned long flags;

	FUNC0(flags);

	ptr=FUNC5(&ISSUE_SC, SCpnt);

	if(ptr) {
		FUNC2(shpnt)->commands--;
		if (!FUNC2(shpnt)->commands)
			FUNC3(PORTA, 0);
		FUNC1(flags);

		FUNC4(SCpnt->host_scribble);
		SCpnt->host_scribble=NULL;

		return SUCCESS;
	}

	FUNC1(flags);

	/*
	 * FIXME:
	 * for current command: queue ABORT for message out and raise ATN
	 * for disconnected command: pseudo SC with ABORT message or ABORT on reselection?
	 *
	 */

	FUNC6(KERN_ERR, SCpnt,
		    "cannot abort running or disconnected command\n");

	return FAILED;
}