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
struct scsi_cmnd {TYPE_2__* device; } ;
struct sas_task {int dummy; } ;
struct sas_internal {TYPE_1__* dft; } ;
struct domain_device {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; int /*<<< orphan*/  host_eh_scheduled; int /*<<< orphan*/  transportt; } ;
struct TYPE_4__ {struct Scsi_Host* host; } ;
struct TYPE_3__ {int (* lldd_abort_task ) (struct sas_task*) ;} ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int TMF_RESP_FUNC_SUCC ; 
 struct sas_task* FUNC0 (struct scsi_cmnd*) ; 
 struct domain_device* FUNC1 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC2 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (struct sas_task*) ; 
 struct sas_internal* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct scsi_cmnd *cmd)
{
	int res = TMF_RESP_FUNC_FAILED;
	struct sas_task *task = FUNC0(cmd);
	struct Scsi_Host *host = cmd->device->host;
	struct domain_device *dev = FUNC1(cmd);
	struct sas_internal *i = FUNC7(host->transportt);
	unsigned long flags;

	if (!i->dft->lldd_abort_task)
		return FAILED;

	FUNC4(host->host_lock, flags);
	/* We cannot do async aborts for SATA devices */
	if (FUNC2(dev) && !host->host_eh_scheduled) {
		FUNC5(host->host_lock, flags);
		return FAILED;
	}
	FUNC5(host->host_lock, flags);

	if (task)
		res = i->dft->lldd_abort_task(task);
	else
		FUNC3("no task to abort\n");
	if (res == TMF_RESP_FUNC_SUCC || res == TMF_RESP_FUNC_COMPLETE)
		return SUCCESS;

	return FAILED;
}