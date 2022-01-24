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
struct Scsi_Host {scalar_t__ host_failed; scalar_t__ host_eh_scheduled; int /*<<< orphan*/ * ehandler; int /*<<< orphan*/  host_no; int /*<<< orphan*/  eh_noresume; TYPE_1__* transportt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* eh_strategy_handler ) (struct Scsi_Host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC5 (struct Scsi_Host*) ; 
 scalar_t__ FUNC6 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct Scsi_Host*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (struct Scsi_Host*) ; 

int FUNC12(void *data)
{
	struct Scsi_Host *shost = data;

	/*
	 * We use TASK_INTERRUPTIBLE so that the thread is not
	 * counted against the load average as a running process.
	 * We never actually get interrupted because kthread_run
	 * disables signal delivery for the created thread.
	 */
	while (true) {
		/*
		 * The sequence in kthread_stop() sets the stop flag first
		 * then wakes the process.  To avoid missed wakeups, the task
		 * should always be in a non running state before the stop
		 * flag is checked
		 */
		FUNC9(TASK_INTERRUPTIBLE);
		if (FUNC2())
			break;

		if ((shost->host_failed == 0 && shost->host_eh_scheduled == 0) ||
		    shost->host_failed != FUNC6(shost)) {
			FUNC0(1,
				FUNC10(KERN_INFO, shost,
					     "scsi_eh_%d: sleeping\n",
					     shost->host_no));
			FUNC3();
			continue;
		}

		FUNC1(TASK_RUNNING);
		FUNC0(1,
			FUNC10(KERN_INFO, shost,
				     "scsi_eh_%d: waking up %d/%d/%d\n",
				     shost->host_no, shost->host_eh_scheduled,
				     shost->host_failed,
				     FUNC6(shost)));

		/*
		 * We have a host that is failing for some reason.  Figure out
		 * what we need to do to get it up and online again (if we can).
		 * If we fail, we end up taking the thing offline.
		 */
		if (!shost->eh_noresume && FUNC4(shost) != 0) {
			FUNC0(1,
				FUNC10(KERN_ERR, shost,
					     "scsi_eh_%d: unable to autoresume\n",
					     shost->host_no));
			continue;
		}

		if (shost->transportt->eh_strategy_handler)
			shost->transportt->eh_strategy_handler(shost);
		else
			FUNC8(shost);

		/* All scmds have been handled */
		shost->host_failed = 0;

		/*
		 * Note - if the above fails completely, the action is to take
		 * individual devices offline and flush the queue of any
		 * outstanding requests that may have been pending.  When we
		 * restart, we restart any I/O to any other devices on the bus
		 * which are still online.
		 */
		FUNC7(shost);
		if (!shost->eh_noresume)
			FUNC5(shost);
	}
	FUNC1(TASK_RUNNING);

	FUNC0(1,
		FUNC10(KERN_INFO, shost,
			     "Error handler scsi_eh_%d exiting\n",
			     shost->host_no));
	shost->ehandler = NULL;
	return 0;
}