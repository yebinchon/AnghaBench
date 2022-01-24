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
struct pqi_scsi_dev {int dummy; } ;
struct pqi_queue_group {int dummy; } ;
struct pqi_io_request {struct pqi_queue_group* queue_group; struct scsi_cmnd* scmd; } ;
struct pqi_ctrl_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; struct pqi_scsi_dev* hostdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_RESET ; 
 scalar_t__ FUNC0 (struct pqi_scsi_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_io_request*) ; 
 int FUNC2 (struct pqi_ctrl_info*,struct pqi_io_request*,struct pqi_scsi_dev*,struct scsi_cmnd*,struct pqi_queue_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 struct pqi_ctrl_info* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pqi_io_request *io_request)
{
	struct scsi_cmnd *scmd;
	struct pqi_scsi_dev *device;
	struct pqi_ctrl_info *ctrl_info;
	struct pqi_queue_group *queue_group;

	scmd = io_request->scmd;
	device = scmd->device->hostdata;
	if (FUNC0(device)) {
		FUNC1(io_request);
		FUNC5(scmd, DID_RESET);
		FUNC4(scmd);
		return 0;
	}

	ctrl_info = FUNC6(scmd->device->host);
	queue_group = io_request->queue_group;

	FUNC3(io_request);

	return FUNC2(ctrl_info, io_request,
		device, scmd, queue_group);
}