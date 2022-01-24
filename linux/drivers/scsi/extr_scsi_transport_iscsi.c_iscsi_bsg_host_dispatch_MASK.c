#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct iscsi_internal {TYPE_4__* iscsi_transport; } ;
struct TYPE_5__ {long vendor_id; } ;
struct TYPE_6__ {TYPE_1__ h_vendor; } ;
struct iscsi_bsg_request {int msgcode; TYPE_2__ rqst_data; } ;
struct iscsi_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct iscsi_bsg_host_vendor {int dummy; } ;
struct bsg_job {int request_len; int reply_len; struct iscsi_bsg_reply* reply; struct iscsi_bsg_request* request; } ;
struct Scsi_Host {TYPE_3__* hostt; int /*<<< orphan*/  transportt; } ;
struct TYPE_8__ {int (* bsg_request ) (struct bsg_job*) ;} ;
struct TYPE_7__ {long vendor_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADR ; 
 int ENOMSG ; 
 int ESRCH ; 
#define  ISCSI_BSG_HST_VENDOR 128 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*,int,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC2 (struct bsg_job*) ; 
 int FUNC3 (struct bsg_job*) ; 
 struct iscsi_internal* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bsg_job *job)
{
	struct Scsi_Host *shost = FUNC2(job);
	struct iscsi_bsg_request *req = job->request;
	struct iscsi_bsg_reply *reply = job->reply;
	struct iscsi_internal *i = FUNC4(shost->transportt);
	int cmdlen = sizeof(uint32_t);	/* start with length of msgcode */
	int ret;

	/* check if we have the msgcode value at least */
	if (job->request_len < sizeof(uint32_t)) {
		ret = -ENOMSG;
		goto fail_host_msg;
	}

	/* Validate the host command */
	switch (req->msgcode) {
	case ISCSI_BSG_HST_VENDOR:
		cmdlen += sizeof(struct iscsi_bsg_host_vendor);
		if ((shost->hostt->vendor_id == 0L) ||
		    (req->rqst_data.h_vendor.vendor_id !=
			shost->hostt->vendor_id)) {
			ret = -ESRCH;
			goto fail_host_msg;
		}
		break;
	default:
		ret = -EBADR;
		goto fail_host_msg;
	}

	/* check if we really have all the request data needed */
	if (job->request_len < cmdlen) {
		ret = -ENOMSG;
		goto fail_host_msg;
	}

	ret = i->iscsi_transport->bsg_request(job);
	if (!ret)
		return 0;

fail_host_msg:
	/* return the errno failure code as the only status */
	FUNC0(job->reply_len < sizeof(uint32_t));
	reply->reply_payload_rcv_len = 0;
	reply->result = ret;
	job->reply_len = sizeof(uint32_t);
	FUNC1(job, ret, 0);
	return 0;
}