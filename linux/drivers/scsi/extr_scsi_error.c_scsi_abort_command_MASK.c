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
struct scsi_device {struct Scsi_Host* host; } ;
struct scsi_cmnd {int eh_eflags; int /*<<< orphan*/  abort_work; struct scsi_device* device; } ;
struct Scsi_Host {int eh_deadline; int /*<<< orphan*/  tmf_work_q; int /*<<< orphan*/  host_lock; scalar_t__ last_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAILED ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int SCSI_EH_ABORT_SCHEDULED ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC7(struct scsi_cmnd *scmd)
{
	struct scsi_device *sdev = scmd->device;
	struct Scsi_Host *shost = sdev->host;
	unsigned long flags;

	if (scmd->eh_eflags & SCSI_EH_ABORT_SCHEDULED) {
		/*
		 * Retry after abort failed, escalate to next level.
		 */
		FUNC1(3,
			FUNC4(KERN_INFO, scmd,
				    "previous abort failed\n"));
		FUNC0(FUNC2(&scmd->abort_work));
		return FAILED;
	}

	FUNC5(shost->host_lock, flags);
	if (shost->eh_deadline != -1 && !shost->last_reset)
		shost->last_reset = jiffies;
	FUNC6(shost->host_lock, flags);

	scmd->eh_eflags |= SCSI_EH_ABORT_SCHEDULED;
	FUNC1(3,
		FUNC4(KERN_INFO, scmd, "abort scheduled\n"));
	FUNC3(shost->tmf_work_q, &scmd->abort_work, HZ / 100);
	return SUCCESS;
}