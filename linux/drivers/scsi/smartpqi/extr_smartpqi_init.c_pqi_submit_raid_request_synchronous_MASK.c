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
struct pqi_raid_path_request {int /*<<< orphan*/  request_id; int /*<<< orphan*/  error_index; } ;
struct pqi_raid_error_info {int dummy; } ;
struct pqi_iu_header {scalar_t__ iu_type; int /*<<< orphan*/  iu_length; } ;
struct pqi_io_request {struct pqi_iu_header* error_info; int /*<<< orphan*/ * context; int /*<<< orphan*/  io_complete_callback; struct pqi_raid_error_info* iu; int /*<<< orphan*/  index; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  sync_request_sem; TYPE_1__* pci_dev; int /*<<< orphan*/ * queue_groups; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 unsigned long NO_TIMEOUT ; 
 size_t PQI_DEFAULT_QUEUE_GROUP ; 
 size_t PQI_REQUEST_HEADER_LENGTH ; 
 scalar_t__ PQI_REQUEST_IU_RAID_PATH_IO ; 
 unsigned int PQI_SYNC_FLAGS_INTERRUPTABLE ; 
 int /*<<< orphan*/  RAID_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct pqi_raid_error_info*,struct pqi_iu_header*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pqi_raid_error_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 struct pqi_io_request* FUNC10 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC12 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct pqi_io_request*) ; 
 int FUNC15 (struct pqi_iu_header*) ; 
 int /*<<< orphan*/  pqi_raid_synchronous_complete ; 
 int /*<<< orphan*/  FUNC16 (struct pqi_ctrl_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC17 (struct pqi_ctrl_info*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC18 (struct pqi_ctrl_info*,unsigned long) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct pqi_ctrl_info *ctrl_info,
	struct pqi_iu_header *request, unsigned int flags,
	struct pqi_raid_error_info *error_info, unsigned long timeout_msecs)
{
	int rc = 0;
	struct pqi_io_request *io_request;
	unsigned long start_jiffies;
	unsigned long msecs_blocked;
	size_t iu_length;
	FUNC0(wait);

	/*
	 * Note that specifying PQI_SYNC_FLAGS_INTERRUPTABLE and a timeout value
	 * are mutually exclusive.
	 */

	if (flags & PQI_SYNC_FLAGS_INTERRUPTABLE) {
		if (FUNC3(&ctrl_info->sync_request_sem))
			return -ERESTARTSYS;
	} else {
		if (timeout_msecs == NO_TIMEOUT) {
			FUNC2(&ctrl_info->sync_request_sem);
		} else {
			start_jiffies = jiffies;
			if (FUNC4(&ctrl_info->sync_request_sem,
				FUNC9(timeout_msecs)))
				return -ETIMEDOUT;
			msecs_blocked =
				FUNC6(jiffies - start_jiffies);
			if (msecs_blocked >= timeout_msecs) {
				rc = -ETIMEDOUT;
				goto out;
			}
			timeout_msecs -= msecs_blocked;
		}
	}

	FUNC11(ctrl_info);
	timeout_msecs = FUNC18(ctrl_info, timeout_msecs);
	if (timeout_msecs == 0) {
		FUNC13(ctrl_info);
		rc = -ETIMEDOUT;
		goto out;
	}

	if (FUNC12(ctrl_info)) {
		FUNC13(ctrl_info);
		rc = -ENXIO;
		goto out;
	}

	io_request = FUNC10(ctrl_info);

	FUNC19(io_request->index,
		&(((struct pqi_raid_path_request *)request)->request_id));

	if (request->iu_type == PQI_REQUEST_IU_RAID_PATH_IO)
		((struct pqi_raid_path_request *)request)->error_index =
			((struct pqi_raid_path_request *)request)->request_id;

	iu_length = FUNC5(&request->iu_length) +
		PQI_REQUEST_HEADER_LENGTH;
	FUNC7(io_request->iu, request, iu_length);

	io_request->io_complete_callback = pqi_raid_synchronous_complete;
	io_request->context = &wait;

	FUNC16(ctrl_info,
		&ctrl_info->queue_groups[PQI_DEFAULT_QUEUE_GROUP], RAID_PATH,
		io_request);

	FUNC13(ctrl_info);

	if (timeout_msecs == NO_TIMEOUT) {
		FUNC17(ctrl_info, &wait);
	} else {
		if (!FUNC21(&wait,
			FUNC9(timeout_msecs))) {
			FUNC1(&ctrl_info->pci_dev->dev,
				"command timed out\n");
			rc = -ETIMEDOUT;
		}
	}

	if (error_info) {
		if (io_request->error_info)
			FUNC7(error_info, io_request->error_info,
				sizeof(*error_info));
		else
			FUNC8(error_info, 0, sizeof(*error_info));
	} else if (rc == 0 && io_request->error_info) {
		rc = FUNC15(
			io_request->error_info);
	}

	FUNC14(io_request);

out:
	FUNC20(&ctrl_info->sync_request_sem);

	return rc;
}