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
struct TYPE_5__ {int /*<<< orphan*/ * vendor_cmd; } ;
struct TYPE_6__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int reply_payload_rcv_len; int result; } ;
struct TYPE_8__ {int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_7__ {int /*<<< orphan*/  payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {int reply_len; TYPE_4__ reply_payload; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct bfad_s {int dummy; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int BFA_STATUS_OK ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct bfad_im_port_s* FUNC0 (struct Scsi_Host*) ; 
 int FUNC1 (struct bfad_s*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bsg_job*,int,int) ; 
 struct Scsi_Host* FUNC3 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct bsg_job *job)
{
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	uint32_t vendor_cmd = bsg_request->rqst_data.h_vendor.vendor_cmd[0];
	struct Scsi_Host *shost = FUNC3(job);
	struct bfad_im_port_s *im_port = FUNC0(shost);
	struct bfad_s *bfad = im_port->bfad;
	void *payload_kbuf;
	int rc = -EINVAL;

	/* Allocate a temp buffer to hold the passed in user space command */
	payload_kbuf = FUNC5(job->request_payload.payload_len, GFP_KERNEL);
	if (!payload_kbuf) {
		rc = -ENOMEM;
		goto out;
	}

	/* Copy the sg_list passed in to a linear buffer: holds the cmnd data */
	FUNC7(job->request_payload.sg_list,
			  job->request_payload.sg_cnt, payload_kbuf,
			  job->request_payload.payload_len);

	/* Invoke IOCMD handler - to handle all the vendor command requests */
	rc = FUNC1(bfad, vendor_cmd, payload_kbuf,
				job->request_payload.payload_len);
	if (rc != BFA_STATUS_OK)
		goto error;

	/* Copy the response data to the job->reply_payload sg_list */
	FUNC6(job->reply_payload.sg_list,
			    job->reply_payload.sg_cnt,
			    payload_kbuf,
			    job->reply_payload.payload_len);

	/* free the command buffer */
	FUNC4(payload_kbuf);

	/* Fill the BSG job reply data */
	job->reply_len = job->reply_payload.payload_len;
	bsg_reply->reply_payload_rcv_len = job->reply_payload.payload_len;
	bsg_reply->result = rc;

	FUNC2(job, bsg_reply->result,
		       bsg_reply->reply_payload_rcv_len);
	return rc;
error:
	/* free the command buffer */
	FUNC4(payload_kbuf);
out:
	bsg_reply->result = rc;
	job->reply_len = sizeof(uint32_t);
	bsg_reply->reply_payload_rcv_len = 0;
	return rc;
}