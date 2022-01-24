#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
union fsf_status_qual {int /*<<< orphan*/ * word; } ;
struct zfcp_scsi_dev {TYPE_3__* port; } ;
struct zfcp_fsf_req {int status; TYPE_2__* qtcb; struct scsi_device* data; } ;
struct scsi_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  adapter; } ;
struct TYPE_6__ {int fsf_status; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_7__ {TYPE_1__ header; } ;

/* Variables and functions */
#define  FSF_ADAPTER_STATUS_AVAILABLE 136 
#define  FSF_FCP_COMMAND_DOES_NOT_EXIST 135 
#define  FSF_GOOD 134 
#define  FSF_LUN_BOXED 133 
#define  FSF_LUN_HANDLE_NOT_VALID 132 
#define  FSF_PORT_BOXED 131 
#define  FSF_PORT_HANDLE_NOT_VALID 130 
#define  FSF_SQ_INVOKE_LINK_TEST_PROCEDURE 129 
#define  FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED 128 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ACCESS_BOXED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ; 
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ; 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 struct zfcp_scsi_dev* FUNC0 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC7(struct zfcp_fsf_req *req)
{
	struct scsi_device *sdev = req->data;
	struct zfcp_scsi_dev *zfcp_sdev;
	union fsf_status_qual *fsq = &req->qtcb->header.fsf_status_qual;

	if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
		return;

	zfcp_sdev = FUNC0(sdev);

	switch (req->qtcb->header.fsf_status) {
	case FSF_PORT_HANDLE_NOT_VALID:
		if (fsq->word[0] == fsq->word[1]) {
			FUNC1(zfcp_sdev->port->adapter, 0,
						"fsafch1");
			req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		}
		break;
	case FSF_LUN_HANDLE_NOT_VALID:
		if (fsq->word[0] == fsq->word[1]) {
			FUNC3(zfcp_sdev->port, 0, "fsafch2");
			req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		}
		break;
	case FSF_FCP_COMMAND_DOES_NOT_EXIST:
		req->status |= ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED;
		break;
	case FSF_PORT_BOXED:
		FUNC5(zfcp_sdev->port,
					 ZFCP_STATUS_COMMON_ACCESS_BOXED);
		FUNC3(zfcp_sdev->port,
				     ZFCP_STATUS_COMMON_ERP_FAILED, "fsafch3");
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_LUN_BOXED:
		FUNC4(sdev, ZFCP_STATUS_COMMON_ACCESS_BOXED);
		FUNC2(sdev, ZFCP_STATUS_COMMON_ERP_FAILED,
				    "fsafch4");
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
                break;
	case FSF_ADAPTER_STATUS_AVAILABLE:
		switch (fsq->word[0]) {
		case FSF_SQ_INVOKE_LINK_TEST_PROCEDURE:
			FUNC6(zfcp_sdev->port);
			/* fall through */
		case FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED:
			req->status |= ZFCP_STATUS_FSFREQ_ERROR;
			break;
		}
		break;
	case FSF_GOOD:
		req->status |= ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED;
		break;
	}
}