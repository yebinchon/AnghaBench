#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct send_mgmt_resp {int /*<<< orphan*/  tag; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; scalar_t__ virt; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {scalar_t__ vendor_cmd; } ;
struct TYPE_5__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_6__ {scalar_t__ payload_len; } ;
struct bsg_job {int /*<<< orphan*/ * dd_data; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;

/* Variables and functions */
 int BUF_SZ_4K ; 
 int EACCES ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IOCB_SUCCESS ; 
 int LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct bsg_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct lpfc_dmabuf* FUNC4 (struct lpfc_hba*,scalar_t__,int,struct ulp_bde64*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_dmabuf*,TYPE_3__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int FUNC7 (struct lpfc_hba*,struct bsg_job*,int /*<<< orphan*/ ,struct lpfc_dmabuf*,struct lpfc_dmabuf*,int) ; 
 scalar_t__ FUNC8 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct lpfc_vport* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct bsg_job *job)
{
	struct lpfc_vport *vport = FUNC10(FUNC1(job));
	struct lpfc_hba *phba = vport->phba;
	struct fc_bsg_request *bsg_request = job->request;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct send_mgmt_resp *mgmt_resp = (struct send_mgmt_resp *)
		bsg_request->rqst_data.h_vendor.vendor_cmd;
	struct ulp_bde64 *bpl;
	struct lpfc_dmabuf *bmp = NULL, *cmp = NULL;
	int bpl_entries;
	uint32_t tag = mgmt_resp->tag;
	unsigned long reqbfrcnt =
			(unsigned long)job->request_payload.payload_len;
	int rc = 0;

	/* in case no data is transferred */
	bsg_reply->reply_payload_rcv_len = 0;

	if (!reqbfrcnt || (reqbfrcnt > (80 * BUF_SZ_4K))) {
		rc = -ERANGE;
		goto send_mgmt_rsp_exit;
	}

	bmp = FUNC3(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!bmp) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_exit;
	}

	bmp->virt = FUNC8(phba, 0, &bmp->phys);
	if (!bmp->virt) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_free_bmp;
	}

	FUNC0(&bmp->list);
	bpl = (struct ulp_bde64 *) bmp->virt;
	bpl_entries = (LPFC_BPL_SIZE/sizeof(struct ulp_bde64));
	cmp = FUNC4(phba, job->request_payload.payload_len,
				     1, bpl, &bpl_entries);
	if (!cmp) {
		rc = -ENOMEM;
		goto send_mgmt_rsp_free_bmp;
	}
	FUNC5(cmp, &job->request_payload,
			   job->request_payload.payload_len, 1);

	rc = FUNC7(phba, job, tag, cmp, bmp, bpl_entries);

	if (rc == IOCB_SUCCESS)
		return 0; /* done for now */

	rc = -EACCES;

	FUNC6(phba, cmp);

send_mgmt_rsp_free_bmp:
	if (bmp->virt)
		FUNC9(phba, bmp->virt, bmp->phys);
	FUNC2(bmp);
send_mgmt_rsp_exit:
	/* make error code available to userspace */
	bsg_reply->result = rc;
	job->dd_data = NULL;
	return rc;
}