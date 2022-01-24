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
typedef  int /*<<< orphan*/  u8 ;
struct zfcp_scsi_dev {TYPE_1__* port; } ;
struct zfcp_fsf_req {int status; int /*<<< orphan*/  completion; } ;
struct zfcp_adapter {int /*<<< orphan*/  status; } ;
struct scsi_device {int dummy; } ;
struct fc_rport {int dummy; } ;
struct TYPE_2__ {struct zfcp_adapter* adapter; } ;

/* Variables and functions */
 int FAILED ; 
 int SUCCESS ; 
 int ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_TMFUNCFAILED ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*) ; 
 struct zfcp_scsi_dev* FUNC3 (struct scsi_device*) ; 
 struct fc_rport* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct scsi_device*,int /*<<< orphan*/ ,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct zfcp_adapter*) ; 
 struct zfcp_fsf_req* FUNC8 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_scsi_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct scsi_device *sdev, u8 tm_flags)
{
	struct zfcp_scsi_dev *zfcp_sdev = FUNC3(sdev);
	struct zfcp_adapter *adapter = zfcp_sdev->port->adapter;
	struct fc_rport *rport = FUNC4(FUNC2(sdev));
	struct zfcp_fsf_req *fsf_req = NULL;
	int retval = SUCCESS, ret;
	int retry = 3;

	while (retry--) {
		fsf_req = FUNC8(sdev, tm_flags);
		if (fsf_req)
			break;

		FUNC6("wait", sdev, tm_flags, NULL);
		FUNC7(adapter);
		ret = FUNC1(rport);
		if (ret) {
			FUNC6("fiof", sdev, tm_flags, NULL);
			return ret;
		}

		if (!(FUNC0(&adapter->status) &
		      ZFCP_STATUS_COMMON_RUNNING)) {
			FUNC6("nres", sdev, tm_flags, NULL);
			return SUCCESS;
		}
	}
	if (!fsf_req) {
		FUNC6("reqf", sdev, tm_flags, NULL);
		return FAILED;
	}

	FUNC5(&fsf_req->completion);

	if (fsf_req->status & ZFCP_STATUS_FSFREQ_TMFUNCFAILED) {
		FUNC6("fail", sdev, tm_flags, fsf_req);
		retval = FAILED;
	} else {
		FUNC6("okay", sdev, tm_flags, fsf_req);
		FUNC10(zfcp_sdev, tm_flags);
	}

	FUNC9(fsf_req);
	return retval;
}