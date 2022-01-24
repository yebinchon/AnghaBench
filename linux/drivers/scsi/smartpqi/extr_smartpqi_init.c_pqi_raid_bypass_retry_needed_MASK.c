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
struct scsi_cmnd {int result; TYPE_1__* device; } ;
struct pqi_scsi_dev {int dummy; } ;
struct pqi_io_request {struct scsi_cmnd* scmd; int /*<<< orphan*/  raid_bypass; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; struct pqi_scsi_dev* hostdata; } ;

/* Variables and functions */
 scalar_t__ DID_NO_CONNECT ; 
 int SAM_STAT_GOOD ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC2 (struct pqi_scsi_dev*) ; 
 struct pqi_ctrl_info* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct pqi_io_request *io_request)
{
	struct scsi_cmnd *scmd;
	struct pqi_scsi_dev *device;
	struct pqi_ctrl_info *ctrl_info;

	if (!io_request->raid_bypass)
		return false;

	scmd = io_request->scmd;
	if ((scmd->result & 0xff) == SAM_STAT_GOOD)
		return false;
	if (FUNC0(scmd->result) == DID_NO_CONNECT)
		return false;

	device = scmd->device->hostdata;
	if (FUNC2(device))
		return false;

	ctrl_info = FUNC3(scmd->device->host);
	if (FUNC1(ctrl_info))
		return false;

	return true;
}