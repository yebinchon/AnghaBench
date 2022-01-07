
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct ulp_bde64 {int dummy; } ;
struct menlo_response {int dummy; } ;
struct menlo_command {scalar_t__ cmd; int xri; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_22__ {int Fctl; int Type; int Rctl; scalar_t__ Dfctl; } ;
struct TYPE_23__ {TYPE_7__ hcsw; } ;
struct TYPE_21__ {int bdeSize; int bdeFlags; int addrLow; int addrHigh; scalar_t__ ulpIoTag32; } ;
struct TYPE_24__ {TYPE_8__ w5; TYPE_6__ bdl; } ;
struct TYPE_13__ {scalar_t__* ulpWord; TYPE_9__ genreq64; } ;
struct TYPE_14__ {int ulpBdeCount; int ulpLe; int ulpPU; int ulpContext; TYPE_10__ un; int ulpCommand; scalar_t__ ulpTimeout; int ulpOwner; int ulpClass; } ;
struct lpfc_iocbq {struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; int iocb_cmpl; int vport; int iocb_flag; TYPE_11__ iocb; } ;
struct lpfc_hba {int menlo_flag; int pport; } ;
struct TYPE_16__ {struct lpfc_dmabuf* rmp; struct lpfc_iocbq* cmdiocbq; } ;
struct TYPE_17__ {TYPE_1__ menlo; } ;
struct lpfc_dmabuf {int phys; scalar_t__ virt; TYPE_2__ context_un; struct bsg_job* set_job; int type; int list; } ;
struct TYPE_18__ {scalar_t__ vendor_cmd; } ;
struct TYPE_19__ {TYPE_3__ h_vendor; } ;
struct fc_bsg_request {TYPE_4__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct bsg_job_data {int phys; scalar_t__ virt; TYPE_2__ context_un; struct bsg_job* set_job; int type; int list; } ;
struct TYPE_20__ {int payload_len; } ;
struct TYPE_15__ {int payload_len; } ;
struct bsg_job {int request_len; int reply_len; struct lpfc_dmabuf* dd_data; TYPE_5__ reply_payload; TYPE_12__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
typedef TYPE_11__ IOCB_t ;


 int BUFF_TYPE_BLP_64 ;
 int CLASS3 ;
 int CMD_GEN_REQUEST64_CR ;
 int CMD_GEN_REQUEST64_CX ;
 int ENOMEM ;
 int EPERM ;
 int ERANGE ;
 int FC_RCTL_DD_UNSOL_CMD ;
 int GFP_KERNEL ;
 int HBA_MENLO_SUPPORT ;
 int INIT_LIST_HEAD (int *) ;
 int IOCB_SUCCESS ;
 int KERN_WARNING ;
 int LA ;
 int LOG_LIBDFC ;
 int LPFC_BPL_SIZE ;
 scalar_t__ LPFC_BSG_VENDOR_MENLO_CMD ;
 int LPFC_ELS_RING ;
 int LPFC_IO_LIBDFC ;
 int MENLO_CONTEXT ;
 scalar_t__ MENLO_DID ;
 int MENLO_PU ;
 scalar_t__ MENLO_TIMEOUT ;
 int MENLO_TRANSPORT_TYPE ;
 int OWN_CHIP ;
 int SI ;
 int TYPE_MENLO ;
 int fc_bsg_to_shost (struct bsg_job*) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 struct lpfc_dmabuf* lpfc_alloc_bsg_buffers (struct lpfc_hba*,int ,int,struct ulp_bde64*,int*) ;
 int lpfc_bsg_copy_data (struct lpfc_dmabuf*,TYPE_12__*,int ,int) ;
 int lpfc_bsg_menlo_cmd_cmp ;
 int lpfc_free_bsg_buffers (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 scalar_t__ lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,scalar_t__,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,scalar_t__) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 struct lpfc_vport* shost_priv (int ) ;

__attribute__((used)) static int
lpfc_menlo_cmd(struct bsg_job *job)
{
 struct lpfc_vport *vport = shost_priv(fc_bsg_to_shost(job));
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *cmdiocbq;
 IOCB_t *cmd;
 int rc = 0;
 struct menlo_command *menlo_cmd;
 struct lpfc_dmabuf *bmp = ((void*)0), *cmp = ((void*)0), *rmp = ((void*)0);
 int request_nseg;
 int reply_nseg;
 struct bsg_job_data *dd_data;
 struct ulp_bde64 *bpl = ((void*)0);


 bsg_reply->reply_payload_rcv_len = 0;

 if (job->request_len <
     sizeof(struct fc_bsg_request) +
  sizeof(struct menlo_command)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2784 Received MENLO_CMD request below "
    "minimum size\n");
  rc = -ERANGE;
  goto no_dd_data;
 }

 if (job->reply_len <
     sizeof(struct fc_bsg_request) + sizeof(struct menlo_response)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2785 Received MENLO_CMD reply below "
    "minimum size\n");
  rc = -ERANGE;
  goto no_dd_data;
 }

 if (!(phba->menlo_flag & HBA_MENLO_SUPPORT)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2786 Adapter does not support menlo "
    "commands\n");
  rc = -EPERM;
  goto no_dd_data;
 }

 menlo_cmd = (struct menlo_command *)
  bsg_request->rqst_data.h_vendor.vendor_cmd;


 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2787 Failed allocation of dd_data\n");
  rc = -ENOMEM;
  goto no_dd_data;
 }

 bmp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!bmp) {
  rc = -ENOMEM;
  goto free_dd;
 }

 bmp->virt = lpfc_mbuf_alloc(phba, 0, &bmp->phys);
 if (!bmp->virt) {
  rc = -ENOMEM;
  goto free_bmp;
 }

 INIT_LIST_HEAD(&bmp->list);

 bpl = (struct ulp_bde64 *)bmp->virt;
 request_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64);
 cmp = lpfc_alloc_bsg_buffers(phba, job->request_payload.payload_len,
         1, bpl, &request_nseg);
 if (!cmp) {
  rc = -ENOMEM;
  goto free_bmp;
 }
 lpfc_bsg_copy_data(cmp, &job->request_payload,
      job->request_payload.payload_len, 1);

 bpl += request_nseg;
 reply_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64) - request_nseg;
 rmp = lpfc_alloc_bsg_buffers(phba, job->reply_payload.payload_len, 0,
         bpl, &reply_nseg);
 if (!rmp) {
  rc = -ENOMEM;
  goto free_cmp;
 }

 cmdiocbq = lpfc_sli_get_iocbq(phba);
 if (!cmdiocbq) {
  rc = -ENOMEM;
  goto free_rmp;
 }

 cmd = &cmdiocbq->iocb;
 cmd->un.genreq64.bdl.ulpIoTag32 = 0;
 cmd->un.genreq64.bdl.addrHigh = putPaddrHigh(bmp->phys);
 cmd->un.genreq64.bdl.addrLow = putPaddrLow(bmp->phys);
 cmd->un.genreq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
 cmd->un.genreq64.bdl.bdeSize =
     (request_nseg + reply_nseg) * sizeof(struct ulp_bde64);
 cmd->un.genreq64.w5.hcsw.Fctl = (SI | LA);
 cmd->un.genreq64.w5.hcsw.Dfctl = 0;
 cmd->un.genreq64.w5.hcsw.Rctl = FC_RCTL_DD_UNSOL_CMD;
 cmd->un.genreq64.w5.hcsw.Type = MENLO_TRANSPORT_TYPE;
 cmd->ulpBdeCount = 1;
 cmd->ulpClass = CLASS3;
 cmd->ulpOwner = OWN_CHIP;
 cmd->ulpLe = 1;
 cmdiocbq->iocb_flag |= LPFC_IO_LIBDFC;
 cmdiocbq->vport = phba->pport;

 cmd->ulpTimeout = MENLO_TIMEOUT - 5;
 cmdiocbq->iocb_cmpl = lpfc_bsg_menlo_cmd_cmp;
 cmdiocbq->context1 = dd_data;
 cmdiocbq->context2 = cmp;
 cmdiocbq->context3 = bmp;
 if (menlo_cmd->cmd == LPFC_BSG_VENDOR_MENLO_CMD) {
  cmd->ulpCommand = CMD_GEN_REQUEST64_CR;
  cmd->ulpPU = MENLO_PU;
  cmd->un.ulpWord[4] = MENLO_DID;
  cmd->ulpContext = MENLO_CONTEXT;
 } else {
  cmd->ulpCommand = CMD_GEN_REQUEST64_CX;
  cmd->ulpPU = 1;
  cmd->un.ulpWord[4] = 0;
  cmd->ulpContext = menlo_cmd->xri;
 }

 dd_data->type = TYPE_MENLO;
 dd_data->set_job = job;
 dd_data->context_un.menlo.cmdiocbq = cmdiocbq;
 dd_data->context_un.menlo.rmp = rmp;
 job->dd_data = dd_data;

 rc = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, cmdiocbq,
  MENLO_TIMEOUT - 5);
 if (rc == IOCB_SUCCESS)
  return 0;

 lpfc_sli_release_iocbq(phba, cmdiocbq);

free_rmp:
 lpfc_free_bsg_buffers(phba, rmp);
free_cmp:
 lpfc_free_bsg_buffers(phba, cmp);
free_bmp:
 if (bmp->virt)
  lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
 kfree(bmp);
free_dd:
 kfree(dd_data);
no_dd_data:

 bsg_reply->result = rc;
 job->dd_data = ((void*)0);
 return rc;
}
