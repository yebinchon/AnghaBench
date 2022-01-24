#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* vendor_cmd; } ;
struct TYPE_4__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; int /*<<< orphan*/  reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;

/* Variables and functions */
 int EINVAL ; 
#define  LPFC_BSG_VENDOR_DIAG_MODE 144 
#define  LPFC_BSG_VENDOR_DIAG_MODE_END 143 
#define  LPFC_BSG_VENDOR_DIAG_RUN_LOOPBACK 142 
#define  LPFC_BSG_VENDOR_FORCED_LINK_SPEED 141 
#define  LPFC_BSG_VENDOR_GET_CT_EVENT 140 
#define  LPFC_BSG_VENDOR_GET_MGMT_REV 139 
#define  LPFC_BSG_VENDOR_GET_TRUNK_INFO 138 
#define  LPFC_BSG_VENDOR_LINK_DIAG_TEST 137 
#define  LPFC_BSG_VENDOR_MBOX 136 
#define  LPFC_BSG_VENDOR_MENLO_CMD 135 
#define  LPFC_BSG_VENDOR_MENLO_DATA 134 
#define  LPFC_BSG_VENDOR_RAS_GET_CONFIG 133 
#define  LPFC_BSG_VENDOR_RAS_GET_FWLOG 132 
#define  LPFC_BSG_VENDOR_RAS_GET_LWPD 131 
#define  LPFC_BSG_VENDOR_RAS_SET_CONFIG 130 
#define  LPFC_BSG_VENDOR_SEND_MGMT_RESP 129 
#define  LPFC_BSG_VENDOR_SET_CT_EVENT 128 
 int FUNC0 (struct bsg_job*) ; 
 int FUNC1 (struct bsg_job*) ; 
 int FUNC2 (struct bsg_job*) ; 
 int FUNC3 (struct bsg_job*) ; 
 int FUNC4 (struct bsg_job*) ; 
 int FUNC5 (struct bsg_job*) ; 
 int FUNC6 (struct bsg_job*) ; 
 int FUNC7 (struct bsg_job*) ; 
 int FUNC8 (struct bsg_job*) ; 
 int FUNC9 (struct bsg_job*) ; 
 int FUNC10 (struct bsg_job*) ; 
 int FUNC11 (struct bsg_job*) ; 
 int FUNC12 (struct bsg_job*) ; 
 int FUNC13 (struct bsg_job*) ; 
 int FUNC14 (struct bsg_job*) ; 
 int FUNC15 (struct bsg_job*) ; 

__attribute__((used)) static int
FUNC16(struct bsg_job *job)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	int command = bsg_request->rqst_data.h_vendor.vendor_cmd[0];
	int rc;

	switch (command) {
	case LPFC_BSG_VENDOR_SET_CT_EVENT:
		rc = FUNC7(job);
		break;
	case LPFC_BSG_VENDOR_GET_CT_EVENT:
		rc = FUNC6(job);
		break;
	case LPFC_BSG_VENDOR_SEND_MGMT_RESP:
		rc = FUNC9(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_MODE:
		rc = FUNC0(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_MODE_END:
		rc = FUNC14(job);
		break;
	case LPFC_BSG_VENDOR_DIAG_RUN_LOOPBACK:
		rc = FUNC1(job);
		break;
	case LPFC_BSG_VENDOR_LINK_DIAG_TEST:
		rc = FUNC15(job);
		break;
	case LPFC_BSG_VENDOR_GET_MGMT_REV:
		rc = FUNC2(job);
		break;
	case LPFC_BSG_VENDOR_MBOX:
		rc = FUNC8(job);
		break;
	case LPFC_BSG_VENDOR_MENLO_CMD:
	case LPFC_BSG_VENDOR_MENLO_DATA:
		rc = FUNC13(job);
		break;
	case LPFC_BSG_VENDOR_FORCED_LINK_SPEED:
		rc = FUNC11(job);
		break;
	case LPFC_BSG_VENDOR_RAS_GET_LWPD:
		rc = FUNC5(job);
		break;
	case LPFC_BSG_VENDOR_RAS_GET_FWLOG:
		rc = FUNC4(job);
		break;
	case LPFC_BSG_VENDOR_RAS_GET_CONFIG:
		rc = FUNC3(job);
		break;
	case LPFC_BSG_VENDOR_RAS_SET_CONFIG:
		rc = FUNC10(job);
		break;
	case LPFC_BSG_VENDOR_GET_TRUNK_INFO:
		rc = FUNC12(job);
		break;
	default:
		rc = -EINVAL;
		bsg_reply->reply_payload_rcv_len = 0;
		/* make error code available to userspace */
		bsg_reply->result = rc;
		break;
	}

	return rc;
}