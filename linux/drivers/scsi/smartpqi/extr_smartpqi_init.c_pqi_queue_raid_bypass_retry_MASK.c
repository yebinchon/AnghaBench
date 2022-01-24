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
struct scsi_cmnd {TYPE_1__* device; scalar_t__ result; } ;
struct pqi_io_request {struct scsi_cmnd* scmd; int /*<<< orphan*/  io_complete_callback; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*,struct pqi_io_request*,int) ; 
 int /*<<< orphan*/  pqi_queued_raid_bypass_complete ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*) ; 
 struct pqi_ctrl_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pqi_io_request *io_request)
{
	struct scsi_cmnd *scmd;
	struct pqi_ctrl_info *ctrl_info;

	io_request->io_complete_callback = pqi_queued_raid_bypass_complete;
	scmd = io_request->scmd;
	scmd->result = 0;
	ctrl_info = FUNC2(scmd->device->host);

	FUNC0(ctrl_info, io_request, false);
	FUNC1(ctrl_info);
}