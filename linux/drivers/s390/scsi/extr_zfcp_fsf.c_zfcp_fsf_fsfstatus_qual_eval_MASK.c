#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {int /*<<< orphan*/  status; TYPE_5__* adapter; TYPE_3__* qtcb; } ;
struct TYPE_11__ {TYPE_4__* ccw_device; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int* word; } ;
struct TYPE_8__ {TYPE_1__ fsf_status_qual; } ;
struct TYPE_9__ {TYPE_2__ header; } ;

/* Variables and functions */
#define  FSF_SQ_COMMAND_ABORTED 133 
#define  FSF_SQ_FCP_RSP_AVAILABLE 132 
#define  FSF_SQ_INVOKE_LINK_TEST_PROCEDURE 131 
#define  FSF_SQ_NO_RECOM 130 
#define  FSF_SQ_NO_RETRY_POSSIBLE 129 
#define  FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED 128 
 int /*<<< orphan*/  ZFCP_STATUS_FSFREQ_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC3(struct zfcp_fsf_req *req)
{
	switch (req->qtcb->header.fsf_status_qual.word[0]) {
	case FSF_SQ_FCP_RSP_AVAILABLE:
	case FSF_SQ_INVOKE_LINK_TEST_PROCEDURE:
	case FSF_SQ_NO_RETRY_POSSIBLE:
	case FSF_SQ_ULP_DEPENDENT_ERP_REQUIRED:
		return;
	case FSF_SQ_COMMAND_ABORTED:
		break;
	case FSF_SQ_NO_RECOM:
		FUNC0(&req->adapter->ccw_device->dev,
			"The FCP adapter reported a problem "
			"that cannot be recovered\n");
		FUNC2(req->adapter);
		FUNC1(req->adapter, 0, "fsfsqe1");
		break;
	}
	/* all non-return stats set FSFREQ_ERROR*/
	req->status |= ZFCP_STATUS_FSFREQ_ERROR;
}