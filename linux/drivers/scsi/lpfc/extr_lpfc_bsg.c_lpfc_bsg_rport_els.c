
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t uint16_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_16__ {int * rmp; struct lpfc_nodelist* ndlp; struct lpfc_iocbq* cmdiocbq; } ;
struct TYPE_17__ {TYPE_7__ iocb; } ;
struct lpfc_nodelist {size_t nlp_rpi; TYPE_8__ context_un; struct bsg_job* set_job; int type; int nlp_DID; } ;
struct TYPE_15__ {struct lpfc_nodelist* ndlp; } ;
struct TYPE_14__ {size_t ulpContext; } ;
struct lpfc_iocbq {int iocb_flag; struct lpfc_nodelist* context1; int iocb_cmpl; TYPE_6__ context_un; TYPE_5__ iocb; scalar_t__ context2; } ;
struct TYPE_13__ {size_t* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_poll; int hbalock; int HCregaddr; TYPE_4__ sli4_hba; } ;
struct lpfc_dmabuf {int virt; } ;
struct TYPE_10__ {int els_code; } ;
struct TYPE_11__ {TYPE_1__ r_els; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct bsg_job_data {size_t nlp_rpi; TYPE_8__ context_un; struct bsg_job* set_job; int type; int nlp_DID; } ;
struct TYPE_12__ {scalar_t__ payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {struct lpfc_nodelist* dd_data; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct TYPE_18__ {struct lpfc_rport_data* dd_data; } ;


 int DISABLE_FCP_RING_INT ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ FCELSSIZE ;
 int GFP_KERNEL ;
 int HC_R0INT_ENA ;
 int IOCB_BUSY ;
 int IOCB_SUCCESS ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int LPFC_ELS_RING ;
 int LPFC_FCP_RING ;
 int LPFC_IO_CMD_OUTSTANDING ;
 int LPFC_IO_LIBDFC ;
 scalar_t__ LPFC_SLI_REV4 ;
 int TYPE_IOCB ;
 TYPE_9__* fc_bsg_to_rport (struct bsg_job*) ;
 int fc_bsg_to_shost (struct bsg_job*) ;
 int kfree (struct lpfc_nodelist*) ;
 struct lpfc_nodelist* kmalloc (int,int ) ;
 int lpfc_bsg_rport_els_cmp ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int readl (int ) ;
 int sg_copy_to_buffer (int ,int ,int ,int) ;
 struct lpfc_vport* shost_priv (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,int ) ;

__attribute__((used)) static int
lpfc_bsg_rport_els(struct bsg_job *job)
{
 struct lpfc_vport *vport = shost_priv(fc_bsg_to_shost(job));
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_rport_data *rdata = fc_bsg_to_rport(job)->dd_data;
 struct lpfc_nodelist *ndlp = rdata->pnode;
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 uint32_t elscmd;
 uint32_t cmdsize;
 struct lpfc_iocbq *cmdiocbq;
 uint16_t rpi = 0;
 struct bsg_job_data *dd_data;
 unsigned long flags;
 uint32_t creg_val;
 int rc = 0;


 bsg_reply->reply_payload_rcv_len = 0;





 if (job->request_payload.payload_len > FCELSSIZE) {
  rc = -EINVAL;
  goto no_dd_data;
 }


 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2735 Failed allocation of dd_data\n");
  rc = -ENOMEM;
  goto no_dd_data;
 }

 elscmd = bsg_request->rqst_data.r_els.els_code;
 cmdsize = job->request_payload.payload_len;

 if (!lpfc_nlp_get(ndlp)) {
  rc = -ENODEV;
  goto free_dd_data;
 }







 cmdiocbq = lpfc_prep_els_iocb(vport, 1, cmdsize, 0, ndlp,
          ndlp->nlp_DID, elscmd);
 if (!cmdiocbq) {
  rc = -EIO;
  goto release_ndlp;
 }

 rpi = ndlp->nlp_rpi;



 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt,
     ((struct lpfc_dmabuf *)cmdiocbq->context2)->virt,
     cmdsize);

 if (phba->sli_rev == LPFC_SLI_REV4)
  cmdiocbq->iocb.ulpContext = phba->sli4_hba.rpi_ids[rpi];
 else
  cmdiocbq->iocb.ulpContext = rpi;
 cmdiocbq->iocb_flag |= LPFC_IO_LIBDFC;
 cmdiocbq->context1 = dd_data;
 cmdiocbq->context_un.ndlp = ndlp;
 cmdiocbq->iocb_cmpl = lpfc_bsg_rport_els_cmp;
 dd_data->type = TYPE_IOCB;
 dd_data->set_job = job;
 dd_data->context_un.iocb.cmdiocbq = cmdiocbq;
 dd_data->context_un.iocb.ndlp = ndlp;
 dd_data->context_un.iocb.rmp = ((void*)0);
 job->dd_data = dd_data;

 if (phba->cfg_poll & DISABLE_FCP_RING_INT) {
  if (lpfc_readl(phba->HCregaddr, &creg_val)) {
   rc = -EIO;
   goto linkdown_err;
  }
  creg_val |= (HC_R0INT_ENA << LPFC_FCP_RING);
  writel(creg_val, phba->HCregaddr);
  readl(phba->HCregaddr);
 }

 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, cmdiocbq, 0);

 if (rc == IOCB_SUCCESS) {
  spin_lock_irqsave(&phba->hbalock, flags);

  if (cmdiocbq->iocb_flag & LPFC_IO_LIBDFC) {

   cmdiocbq->iocb_flag |= LPFC_IO_CMD_OUTSTANDING;
  }
  spin_unlock_irqrestore(&phba->hbalock, flags);
  return 0;
 } else if (rc == IOCB_BUSY) {
  rc = -EAGAIN;
 } else {
  rc = -EIO;
 }


 job->dd_data = ((void*)0);

linkdown_err:
 cmdiocbq->context1 = ndlp;
 lpfc_els_free_iocb(phba, cmdiocbq);

release_ndlp:
 lpfc_nlp_put(ndlp);

free_dd_data:
 kfree(dd_data);

no_dd_data:

 bsg_reply->result = rc;
 job->dd_data = ((void*)0);
 return rc;
}
