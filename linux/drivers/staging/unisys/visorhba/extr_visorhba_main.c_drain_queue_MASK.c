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
struct visorhba_devdata {TYPE_3__* dev; int /*<<< orphan*/  idr; } ;
struct TYPE_5__ {int /*<<< orphan*/  result; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct uiscmdrsp {scalar_t__ cmdtype; TYPE_2__ scsitaskmgmt; TYPE_1__ scsi; } ;
struct scsi_cmnd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; int /*<<< orphan*/  visorchannel; } ;

/* Variables and functions */
 scalar_t__ CMD_NOTIFYGUEST_TYPE ; 
 scalar_t__ CMD_SCSITASKMGMT_TYPE ; 
 scalar_t__ CMD_SCSI_TYPE ; 
 int /*<<< orphan*/  IOCHAN_FROM_IOPART ; 
 int /*<<< orphan*/  FUNC0 (struct uiscmdrsp*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct uiscmdrsp*,int /*<<< orphan*/ ) ; 
 struct scsi_cmnd* FUNC2 (struct visorhba_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct uiscmdrsp*) ; 

__attribute__((used)) static void FUNC5(struct uiscmdrsp *cmdrsp,
			struct visorhba_devdata *devdata)
{
	struct scsi_cmnd *scsicmd;

	while (1) {
		/* queue empty */
		if (FUNC4(devdata->dev->visorchannel,
					      IOCHAN_FROM_IOPART,
					      cmdrsp))
			break;
		if (cmdrsp->cmdtype == CMD_SCSI_TYPE) {
			/* scsicmd location is returned by the
			 * deletion
			 */
			scsicmd = FUNC2(devdata,
						      cmdrsp->scsi.handle);
			if (!scsicmd)
				break;
			/* complete the orig cmd */
			FUNC0(cmdrsp, scsicmd);
		} else if (cmdrsp->cmdtype == CMD_SCSITASKMGMT_TYPE) {
			if (!FUNC2(devdata,
						 cmdrsp->scsitaskmgmt.handle))
				break;
			FUNC1(&devdata->idr, cmdrsp,
						  cmdrsp->scsitaskmgmt.result);
		} else if (cmdrsp->cmdtype == CMD_NOTIFYGUEST_TYPE)
			FUNC3(&devdata->dev->device,
				     "ignoring unsupported NOTIFYGUEST\n");
		/* cmdrsp is now available for re-use */
	}
}