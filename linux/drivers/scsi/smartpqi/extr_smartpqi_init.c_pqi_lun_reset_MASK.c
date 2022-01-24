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
struct TYPE_2__ {int /*<<< orphan*/  iu_length; int /*<<< orphan*/  iu_type; } ;
struct pqi_task_management_request {int /*<<< orphan*/  task_management_function; int /*<<< orphan*/  lun_number; int /*<<< orphan*/  request_id; TYPE_1__ header; } ;
struct pqi_scsi_dev {int /*<<< orphan*/  scsi3addr; } ;
struct pqi_io_request {int status; scalar_t__ index; struct pqi_task_management_request* iu; int /*<<< orphan*/ * context; int /*<<< orphan*/  io_complete_callback; } ;
struct pqi_ctrl_info {int /*<<< orphan*/ * queue_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PQI_DEFAULT_QUEUE_GROUP ; 
 scalar_t__ PQI_REQUEST_HEADER_LENGTH ; 
 int /*<<< orphan*/  PQI_REQUEST_IU_TASK_MANAGEMENT ; 
 int /*<<< orphan*/  RAID_PATH ; 
 int /*<<< orphan*/  SOP_TASK_MANAGEMENT_LUN_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_task_management_request*,int /*<<< orphan*/ ,int) ; 
 struct pqi_io_request* FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  pqi_lun_reset_complete ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pqi_io_request*) ; 
 int FUNC6 (struct pqi_ctrl_info*,struct pqi_scsi_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	int rc;
	struct pqi_io_request *io_request;
	FUNC0(wait);
	struct pqi_task_management_request *request;

	io_request = FUNC3(ctrl_info);
	io_request->io_complete_callback = pqi_lun_reset_complete;
	io_request->context = &wait;

	request = io_request->iu;
	FUNC2(request, 0, sizeof(*request));

	request->header.iu_type = PQI_REQUEST_IU_TASK_MANAGEMENT;
	FUNC7(sizeof(*request) - PQI_REQUEST_HEADER_LENGTH,
		&request->header.iu_length);
	FUNC7(io_request->index, &request->request_id);
	FUNC1(request->lun_number, device->scsi3addr,
		sizeof(request->lun_number));
	request->task_management_function = SOP_TASK_MANAGEMENT_LUN_RESET;

	FUNC5(ctrl_info,
		&ctrl_info->queue_groups[PQI_DEFAULT_QUEUE_GROUP], RAID_PATH,
		io_request);

	rc = FUNC6(ctrl_info, device, &wait);
	if (rc == 0)
		rc = io_request->status;

	FUNC4(io_request);

	return rc;
}