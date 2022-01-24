#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int phase; } ;
struct scsi_cmnd {unsigned char cmd_len; int /*<<< orphan*/ * host_scribble; TYPE_2__ SCp; TYPE_1__* device; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  commands; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 struct scsi_cmnd* CURRENT_SC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DISCONNECTED_SC ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FAILED ; 
 TYPE_3__* FUNC3 (struct Scsi_Host*) ; 
 int HZ ; 
 int /*<<< orphan*/  ISSUE_SC ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PORTA ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  reset_done ; 
 int resetted ; 
 int /*<<< orphan*/  resetting ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd * SCpnt)
{
	struct Scsi_Host *shpnt = SCpnt->device->host;
	FUNC0(done);
	int ret, issued, disconnected;
	unsigned char old_cmd_len = SCpnt->cmd_len;
	unsigned long flags;
	unsigned long timeleft;

	if(CURRENT_SC==SCpnt) {
		FUNC9(KERN_ERR, SCpnt, "cannot reset current device\n");
		return FAILED;
	}

	FUNC1(flags);
	issued       = FUNC8(&ISSUE_SC, SCpnt) == NULL;
	disconnected = issued && FUNC8(&DISCONNECTED_SC, SCpnt);
	FUNC2(flags);

	SCpnt->cmd_len         = 0;

	FUNC5(SCpnt, &done, resetting, reset_done);

	timeleft = FUNC10(&done, 100*HZ);
	if (!timeleft) {
		/* remove command from issue queue */
		FUNC1(flags);
		FUNC8(&ISSUE_SC, SCpnt);
		FUNC2(flags);
	}

	SCpnt->cmd_len         = old_cmd_len;

	FUNC1(flags);

	if(SCpnt->SCp.phase & resetted) {
		FUNC3(shpnt)->commands--;
		if (!FUNC3(shpnt)->commands)
			FUNC4(PORTA, 0);
		FUNC7(SCpnt->host_scribble);
		SCpnt->host_scribble=NULL;

		ret = SUCCESS;
	} else {
		/* requeue */
		if(!issued) {
			FUNC6(&ISSUE_SC, SCpnt);
		} else if(disconnected) {
			FUNC6(&DISCONNECTED_SC, SCpnt);
		}

		ret = FAILED;
	}

	FUNC2(flags);
	return ret;
}