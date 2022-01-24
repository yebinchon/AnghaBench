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
struct scsi_disk {int ignore_medium_access_errors; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {int /*<<< orphan*/  rq_disk; } ;

/* Variables and functions */
 struct scsi_disk* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct scsi_cmnd *scmd)
{
	struct scsi_disk *sdkp = FUNC0(scmd->request->rq_disk);

	/* New SCSI EH run, reset gate variable */
	sdkp->ignore_medium_access_errors = false;
}