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
struct zfcp_fsf_req {int status; int /*<<< orphan*/  completion; int /*<<< orphan*/ * data; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; int /*<<< orphan*/  abort_lock; int /*<<< orphan*/  req_list; } ;
struct scsi_cmnd {scalar_t__ host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ; 
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct scsi_cmnd*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct zfcp_adapter*) ; 
 struct zfcp_fsf_req* FUNC7 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_fsf_req*) ; 
 struct zfcp_fsf_req* FUNC9 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct scsi_cmnd *scpnt)
{
	struct Scsi_Host *scsi_host = scpnt->device->host;
	struct zfcp_adapter *adapter =
		(struct zfcp_adapter *) scsi_host->hostdata[0];
	struct zfcp_fsf_req *old_req, *abrt_req;
	unsigned long flags;
	unsigned long old_reqid = (unsigned long) scpnt->host_scribble;
	int retval = SUCCESS, ret;
	int retry = 3;
	char *dbf_tag;

	/* avoid race condition between late normal completion and abort */
	FUNC3(&adapter->abort_lock, flags);

	old_req = FUNC9(adapter->req_list, old_reqid);
	if (!old_req) {
		FUNC4(&adapter->abort_lock, flags);
		FUNC5("abrt_or", scpnt, NULL);
		return FAILED; /* completion could be in progress */
	}
	old_req->data = NULL;

	/* don't access old fsf_req after releasing the abort_lock */
	FUNC4(&adapter->abort_lock, flags);

	while (retry--) {
		abrt_req = FUNC7(scpnt);
		if (abrt_req)
			break;

		FUNC5("abrt_wt", scpnt, NULL);
		FUNC6(adapter);
		ret = FUNC1(scpnt);
		if (ret) {
			FUNC5("abrt_bl", scpnt, NULL);
			return ret;
		}
		if (!(FUNC0(&adapter->status) &
		      ZFCP_STATUS_COMMON_RUNNING)) {
			FUNC5("abrt_ru", scpnt, NULL);
			return SUCCESS;
		}
	}
	if (!abrt_req) {
		FUNC5("abrt_ar", scpnt, NULL);
		return FAILED;
	}

	FUNC2(&abrt_req->completion);

	if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED)
		dbf_tag = "abrt_ok";
	else if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED)
		dbf_tag = "abrt_nn";
	else {
		dbf_tag = "abrt_fa";
		retval = FAILED;
	}
	FUNC5(dbf_tag, scpnt, abrt_req);
	FUNC8(abrt_req);
	return retval;
}