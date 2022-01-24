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
struct scsi_cmnd {int /*<<< orphan*/  rcu; int /*<<< orphan*/  eh_entry; TYPE_1__* device; } ;
struct Scsi_Host {int eh_deadline; int /*<<< orphan*/  host_lock; int /*<<< orphan*/  eh_cmd_q; scalar_t__ last_reset; int /*<<< orphan*/  ehandler; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHOST_CANCEL_RECOVERY ; 
 int /*<<< orphan*/  SHOST_RECOVERY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scsi_eh_inc_host_failed ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmnd*) ; 
 int FUNC4 (struct Scsi_Host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct scsi_cmnd *scmd)
{
	struct Scsi_Host *shost = scmd->device->host;
	unsigned long flags;
	int ret;

	FUNC0(!shost->ehandler);

	FUNC5(shost->host_lock, flags);
	if (FUNC4(shost, SHOST_RECOVERY)) {
		ret = FUNC4(shost, SHOST_CANCEL_RECOVERY);
		FUNC0(ret);
	}
	if (shost->eh_deadline != -1 && !shost->last_reset)
		shost->last_reset = jiffies;

	FUNC3(scmd);
	FUNC2(&scmd->eh_entry, &shost->eh_cmd_q);
	FUNC6(shost->host_lock, flags);
	/*
	 * Ensure that all tasks observe the host state change before the
	 * host_failed change.
	 */
	FUNC1(&scmd->rcu, scsi_eh_inc_host_failed);
}