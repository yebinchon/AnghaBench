#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  hla; int /*<<< orphan*/  cssid; } ;
union fsf_status_qual {int /*<<< orphan*/ * word; TYPE_4__ fsf_queue_designator; } ;
struct zfcp_scsi_dev {int /*<<< orphan*/  status; int /*<<< orphan*/  lun_handle; TYPE_6__* port; } ;
struct zfcp_fsf_req {int status; TYPE_1__* qtcb; struct scsi_device* data; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_5__* ccw_device; } ;
struct scsi_device {int dummy; } ;
struct fsf_qtcb_header {int fsf_status; int /*<<< orphan*/  lun_handle; union fsf_status_qual fsf_status_qual; } ;
struct TYPE_14__ {scalar_t__ wwpn; TYPE_3__* adapter; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {TYPE_2__* ccw_device; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {struct fsf_qtcb_header header; } ;

/* Variables and functions */
#define  FSF_ADAPTER_STATUS_AVAILABLE 137 
#define  FSF_GOOD 136 
#define  FSF_INVALID_COMMAND_OPTION 135 
#define  FSF_LUN_ALREADY_OPEN 134 
#define  FSF_LUN_SHARING_VIOLATION 133 
#define  FSF_MAXIMUM_NUMBER_OF_LUNS_EXCEEDED 132 
#define  FSF_PORT_BOXED 131 
#define  FSF_PORT_HANDLE_NOT_VALID 130 
#define  FSF_SQ_INVOKE_LINK_TEST_PROCEDURE 129 
#define  FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED 128 
 int ZFCP_STATUS_COMMON_ACCESS_BOXED ; 
 int ZFCP_STATUS_COMMON_ACCESS_DENIED ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_OPEN ; 
 int ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long long,unsigned long long,...) ; 
 struct zfcp_scsi_dev* FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 scalar_t__ FUNC9 (struct scsi_device*) ; 

__attribute__((used)) static void FUNC10(struct zfcp_fsf_req *req)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct scsi_device *sdev = req->data;
	struct zfcp_scsi_dev *zfcp_sdev;
	struct fsf_qtcb_header *header = &req->qtcb->header;
	union fsf_status_qual *qual = &header->fsf_status_qual;

	if (req->status & ZFCP_STATUS_FSFREQ_ERROR)
		return;

	zfcp_sdev = FUNC3(sdev);

	FUNC0(ZFCP_STATUS_COMMON_ACCESS_DENIED |
			  ZFCP_STATUS_COMMON_ACCESS_BOXED,
			  &zfcp_sdev->status);

	switch (header->fsf_status) {

	case FSF_PORT_HANDLE_NOT_VALID:
		FUNC4(adapter, 0, "fsouh_1");
		/* fall through */
	case FSF_LUN_ALREADY_OPEN:
		break;
	case FSF_PORT_BOXED:
		FUNC7(zfcp_sdev->port,
					 ZFCP_STATUS_COMMON_ACCESS_BOXED);
		FUNC5(zfcp_sdev->port,
				     ZFCP_STATUS_COMMON_ERP_FAILED, "fsouh_2");
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_LUN_SHARING_VIOLATION:
		if (qual->word[0])
			FUNC2(&zfcp_sdev->port->adapter->ccw_device->dev,
				 "LUN 0x%016Lx on port 0x%016Lx is already in "
				 "use by CSS%d, MIF Image ID %x\n",
				 FUNC9(sdev),
				 (unsigned long long)zfcp_sdev->port->wwpn,
				 qual->fsf_queue_designator.cssid,
				 qual->fsf_queue_designator.hla);
		FUNC6(sdev,
					ZFCP_STATUS_COMMON_ERP_FAILED |
					ZFCP_STATUS_COMMON_ACCESS_DENIED);
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_MAXIMUM_NUMBER_OF_LUNS_EXCEEDED:
		FUNC2(&adapter->ccw_device->dev,
			 "No handle is available for LUN "
			 "0x%016Lx on port 0x%016Lx\n",
			 (unsigned long long)FUNC9(sdev),
			 (unsigned long long)zfcp_sdev->port->wwpn);
		FUNC6(sdev, ZFCP_STATUS_COMMON_ERP_FAILED);
		/* fall through */
	case FSF_INVALID_COMMAND_OPTION:
		req->status |= ZFCP_STATUS_FSFREQ_ERROR;
		break;
	case FSF_ADAPTER_STATUS_AVAILABLE:
		switch (header->fsf_status_qual.word[0]) {
		case FSF_SQ_INVOKE_LINK_TEST_PROCEDURE:
			FUNC8(zfcp_sdev->port);
			/* fall through */
		case FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED:
			req->status |= ZFCP_STATUS_FSFREQ_ERROR;
			break;
		}
		break;

	case FSF_GOOD:
		zfcp_sdev->lun_handle = header->lun_handle;
		FUNC1(ZFCP_STATUS_COMMON_OPEN, &zfcp_sdev->status);
		break;
	}
}