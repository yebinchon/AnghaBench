
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct send_mgmt_resp {int tag; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int phys; scalar_t__ virt; int list; } ;
struct TYPE_4__ {scalar_t__ vendor_cmd; } ;
struct TYPE_5__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_6__ {scalar_t__ payload_len; } ;
struct bsg_job {int * dd_data; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;


 int BUF_SZ_4K ;
 int EACCES ;
 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IOCB_SUCCESS ;
 int LPFC_BPL_SIZE ;
 int fc_bsg_to_shost (struct bsg_job*) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 struct lpfc_dmabuf* lpfc_alloc_bsg_buffers (struct lpfc_hba*,scalar_t__,int,struct ulp_bde64*,int*) ;
 int lpfc_bsg_copy_data (struct lpfc_dmabuf*,TYPE_3__*,scalar_t__,int) ;
 int lpfc_free_bsg_buffers (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_issue_ct_rsp (struct lpfc_hba*,struct bsg_job*,int ,struct lpfc_dmabuf*,struct lpfc_dmabuf*,int) ;
 scalar_t__ lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,scalar_t__,int ) ;
 struct lpfc_vport* shost_priv (int ) ;

__attribute__((used)) static int
lpfc_bsg_send_mgmt_rsp(struct bsg_job *job)
{
 struct lpfc_vport *vport = shost_priv(fc_bsg_to_shost(job));
 struct lpfc_hba *phba = vport->phba;
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct send_mgmt_resp *mgmt_resp = (struct send_mgmt_resp *)
  bsg_request->rqst_data.h_vendor.vendor_cmd;
 struct ulp_bde64 *bpl;
 struct lpfc_dmabuf *bmp = ((void*)0), *cmp = ((void*)0);
 int bpl_entries;
 uint32_t tag = mgmt_resp->tag;
 unsigned long reqbfrcnt =
   (unsigned long)job->request_payload.payload_len;
 int rc = 0;


 bsg_reply->reply_payload_rcv_len = 0;

 if (!reqbfrcnt || (reqbfrcnt > (80 * BUF_SZ_4K))) {
  rc = -ERANGE;
  goto send_mgmt_rsp_exit;
 }

 bmp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!bmp) {
  rc = -ENOMEM;
  goto send_mgmt_rsp_exit;
 }

 bmp->virt = lpfc_mbuf_alloc(phba, 0, &bmp->phys);
 if (!bmp->virt) {
  rc = -ENOMEM;
  goto send_mgmt_rsp_free_bmp;
 }

 INIT_LIST_HEAD(&bmp->list);
 bpl = (struct ulp_bde64 *) bmp->virt;
 bpl_entries = (LPFC_BPL_SIZE/sizeof(struct ulp_bde64));
 cmp = lpfc_alloc_bsg_buffers(phba, job->request_payload.payload_len,
         1, bpl, &bpl_entries);
 if (!cmp) {
  rc = -ENOMEM;
  goto send_mgmt_rsp_free_bmp;
 }
 lpfc_bsg_copy_data(cmp, &job->request_payload,
      job->request_payload.payload_len, 1);

 rc = lpfc_issue_ct_rsp(phba, job, tag, cmp, bmp, bpl_entries);

 if (rc == IOCB_SUCCESS)
  return 0;

 rc = -EACCES;

 lpfc_free_bsg_buffers(phba, cmp);

send_mgmt_rsp_free_bmp:
 if (bmp->virt)
  lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
 kfree(bmp);
send_mgmt_rsp_exit:

 bsg_reply->result = rc;
 job->dd_data = ((void*)0);
 return rc;
}
