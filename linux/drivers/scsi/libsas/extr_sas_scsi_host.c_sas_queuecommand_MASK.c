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
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct sas_task {int dummy; } ;
struct sas_internal {TYPE_2__* dft; } ;
struct TYPE_4__ {TYPE_3__* ap; } ;
struct domain_device {TYPE_1__ sata_dev; int /*<<< orphan*/  state; } ;
struct Scsi_Host {int /*<<< orphan*/  transportt; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int (* lldd_execute_task ) (struct sas_task*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int DID_BAD_TARGET ; 
 int DID_ERROR ; 
 int DID_SOFT_ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SAS_DEV_GONE ; 
 int SAS_QUEUE_FULL ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int FUNC1 (struct scsi_cmnd*,TYPE_3__*) ; 
 struct domain_device* FUNC2 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct sas_task* FUNC5 (struct scsi_cmnd*,struct domain_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sas_task*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sas_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sas_internal* FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct Scsi_Host *host, struct scsi_cmnd *cmd)
{
	struct sas_internal *i = FUNC12(host->transportt);
	struct domain_device *dev = FUNC2(cmd);
	struct sas_task *task;
	int res = 0;

	/* If the device fell off, no sense in issuing commands */
	if (FUNC11(SAS_DEV_GONE, &dev->state)) {
		cmd->result = DID_BAD_TARGET << 16;
		goto out_done;
	}

	if (FUNC3(dev)) {
		FUNC7(dev->sata_dev.ap->lock);
		res = FUNC1(cmd, dev->sata_dev.ap);
		FUNC8(dev->sata_dev.ap->lock);
		return res;
	}

	task = FUNC5(cmd, dev, GFP_ATOMIC);
	if (!task)
		return SCSI_MLQUEUE_HOST_BUSY;

	res = i->dft->lldd_execute_task(task, GFP_ATOMIC);
	if (res)
		goto out_free_task;
	return 0;

out_free_task:
	FUNC4("lldd_execute_task returned: %d\n", res);
	FUNC0(cmd, NULL);
	FUNC6(task);
	if (res == -SAS_QUEUE_FULL)
		cmd->result = DID_SOFT_ERROR << 16; /* retry */
	else
		cmd->result = DID_ERROR << 16;
out_done:
	cmd->scsi_done(cmd);
	return 0;
}