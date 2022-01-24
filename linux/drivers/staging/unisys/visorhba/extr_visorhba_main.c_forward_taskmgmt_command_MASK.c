#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct visorhba_devdata {int /*<<< orphan*/  idr; TYPE_4__* dev; int /*<<< orphan*/  privlock; scalar_t__ serverchangingstate; scalar_t__ serverdown; } ;
struct TYPE_6__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; } ;
struct TYPE_7__ {int tasktype; int handle; TYPE_2__ vdest; } ;
struct uiscmdrsp {TYPE_3__ scsitaskmgmt; int /*<<< orphan*/  cmdtype; } ;
struct scsi_device {int /*<<< orphan*/  sdev_gendev; int /*<<< orphan*/  lun; int /*<<< orphan*/  id; int /*<<< orphan*/  channel; TYPE_1__* host; } ;
typedef  enum task_mgmt_types { ____Placeholder_task_mgmt_types } task_mgmt_types ;
struct TYPE_8__ {int /*<<< orphan*/  visorchannel; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SCSITASKMGMT_TYPE ; 
 int FAILED ; 
 int /*<<< orphan*/  IOCHAN_TO_IOPART ; 
 int SUCCESS ; 
 int FUNC0 (struct visorhba_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uiscmdrsp*) ; 
 int /*<<< orphan*/  FUNC2 (struct visorhba_devdata*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct uiscmdrsp* FUNC4 (struct visorhba_devdata*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uiscmdrsp*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uiscmdrsp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(enum task_mgmt_types tasktype,
				    struct scsi_device *scsidev)
{
	struct uiscmdrsp *cmdrsp;
	struct visorhba_devdata *devdata =
		(struct visorhba_devdata *)scsidev->host->hostdata;
	int notifyresult = 0xffff;
	wait_queue_head_t notifyevent;
	int scsicmd_id = 0;

	if (devdata->serverdown || devdata->serverchangingstate)
		return FAILED;

	scsicmd_id = FUNC0(devdata, CMD_SCSITASKMGMT_TYPE,
					   NULL);
	if (scsicmd_id < 0)
		return FAILED;

	cmdrsp = FUNC4(devdata, scsicmd_id);

	FUNC5(&notifyevent);

	/* issue TASK_MGMT_ABORT_TASK */
	cmdrsp->cmdtype = CMD_SCSITASKMGMT_TYPE;
	FUNC7(&devdata->idr, &devdata->privlock, cmdrsp,
				   &notifyevent, &notifyresult);

	/* save destination */
	cmdrsp->scsitaskmgmt.tasktype = tasktype;
	cmdrsp->scsitaskmgmt.vdest.channel = scsidev->channel;
	cmdrsp->scsitaskmgmt.vdest.id = scsidev->id;
	cmdrsp->scsitaskmgmt.vdest.lun = scsidev->lun;
	cmdrsp->scsitaskmgmt.handle = scsicmd_id;

	FUNC3(&scsidev->sdev_gendev,
		"visorhba: initiating type=%d taskmgmt command\n", tasktype);
	if (FUNC8(devdata->dev->visorchannel,
				      IOCHAN_TO_IOPART,
				      cmdrsp))
		goto err_del_scsipending_ent;

	/* It can take the Service Partition up to 35 seconds to complete
	 * an IO in some cases, so wait 45 seconds and error out
	 */
	if (!FUNC9(notifyevent, notifyresult != 0xffff,
				FUNC6(45000)))
		goto err_del_scsipending_ent;

	FUNC3(&scsidev->sdev_gendev,
		"visorhba: taskmgmt type=%d success; result=0x%x\n",
		 tasktype, notifyresult);
	FUNC1(&devdata->idr, cmdrsp);
	return SUCCESS;

err_del_scsipending_ent:
	FUNC3(&scsidev->sdev_gendev,
		"visorhba: taskmgmt type=%d not executed\n", tasktype);
	FUNC2(devdata, scsicmd_id);
	FUNC1(&devdata->idr, cmdrsp);
	return FAILED;
}