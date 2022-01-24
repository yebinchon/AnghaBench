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
struct visordisk_info {int /*<<< orphan*/  ios_threshold; int /*<<< orphan*/  error_count; } ;
struct TYPE_2__ {scalar_t__* cmnd; scalar_t__ addlstat; int /*<<< orphan*/  linuxstat; int /*<<< orphan*/  sensebuf; } ;
struct uiscmdrsp {TYPE_1__ scsi; } ;
struct scsi_device {struct visordisk_info* hostdata; } ;
struct scsi_cmnd {int /*<<< orphan*/  sense_buffer; struct scsi_device* device; } ;

/* Variables and functions */
 scalar_t__ ADDL_SEL_TIMEOUT ; 
 scalar_t__ DID_NO_CONNECT ; 
 scalar_t__ INQUIRY ; 
 int /*<<< orphan*/  IOS_ERROR_THRESHOLD ; 
 int /*<<< orphan*/  MAX_SENSE_SIZE ; 
 scalar_t__ VISORHBA_ERROR_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uiscmdrsp *cmdrsp,
			      struct scsi_cmnd *scsicmd)
{
	struct visordisk_info *vdisk;
	struct scsi_device *scsidev;

	scsidev = scsicmd->device;
	FUNC4(scsicmd->sense_buffer, cmdrsp->scsi.sensebuf, MAX_SENSE_SIZE);

	/* Do not log errors for disk-not-present inquiries */
	if (cmdrsp->scsi.cmnd[0] == INQUIRY &&
	    (FUNC3(cmdrsp->scsi.linuxstat) == DID_NO_CONNECT) &&
	    cmdrsp->scsi.addlstat == ADDL_SEL_TIMEOUT)
		return;
	/* Okay see what our error_count is here.... */
	vdisk = scsidev->hostdata;
	if (FUNC1(&vdisk->error_count) < VISORHBA_ERROR_COUNT) {
		FUNC0(&vdisk->error_count);
		FUNC2(&vdisk->ios_threshold, IOS_ERROR_THRESHOLD);
	}
}