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
struct scsi_cmnd {TYPE_1__* device; } ;
struct pqi_scsi_dev {int /*<<< orphan*/  scsi_cmds_outstanding; } ;
struct TYPE_2__ {struct pqi_scsi_dev* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_NO_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

void FUNC2(struct scsi_cmnd *scmd)
{
	struct pqi_scsi_dev *device;

	if (!scmd->device) {
		FUNC1(scmd, DID_NO_CONNECT);
		return;
	}

	device = scmd->device->hostdata;
	if (!device) {
		FUNC1(scmd, DID_NO_CONNECT);
		return;
	}

	FUNC0(&device->scsi_cmds_outstanding);
}