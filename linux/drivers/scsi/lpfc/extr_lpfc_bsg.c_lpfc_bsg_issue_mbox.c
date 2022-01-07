
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_70__ TYPE_9__ ;
typedef struct TYPE_69__ TYPE_8__ ;
typedef struct TYPE_68__ TYPE_7__ ;
typedef struct TYPE_67__ TYPE_6__ ;
typedef struct TYPE_66__ TYPE_5__ ;
typedef struct TYPE_65__ TYPE_4__ ;
typedef struct TYPE_64__ TYPE_3__ ;
typedef struct TYPE_63__ TYPE_31__ ;
typedef struct TYPE_62__ TYPE_2__ ;
typedef struct TYPE_61__ TYPE_29__ ;
typedef struct TYPE_60__ TYPE_28__ ;
typedef struct TYPE_59__ TYPE_27__ ;
typedef struct TYPE_58__ TYPE_26__ ;
typedef struct TYPE_57__ TYPE_25__ ;
typedef struct TYPE_56__ TYPE_24__ ;
typedef struct TYPE_55__ TYPE_23__ ;
typedef struct TYPE_54__ TYPE_22__ ;
typedef struct TYPE_53__ TYPE_21__ ;
typedef struct TYPE_52__ TYPE_20__ ;
typedef struct TYPE_51__ TYPE_1__ ;
typedef struct TYPE_50__ TYPE_19__ ;
typedef struct TYPE_49__ TYPE_18__ ;
typedef struct TYPE_48__ TYPE_17__ ;
typedef struct TYPE_47__ TYPE_16__ ;
typedef struct TYPE_46__ TYPE_15__ ;
typedef struct TYPE_45__ TYPE_14__ ;
typedef struct TYPE_44__ TYPE_13__ ;
typedef struct TYPE_43__ TYPE_12__ ;
typedef struct TYPE_42__ TYPE_11__ ;
typedef struct TYPE_41__ TYPE_10__ ;


struct TYPE_47__ {scalar_t__ co; } ;
struct TYPE_46__ {scalar_t__ type; } ;
struct TYPE_43__ {scalar_t__ bdeSize; } ;
struct TYPE_44__ {TYPE_12__ f; } ;
struct TYPE_45__ {TYPE_13__ tus; } ;
struct READ_EVENT_LOG_VAR {TYPE_14__ rcv_bde64; } ;
struct TYPE_67__ {scalar_t__ bdeSize; } ;
struct TYPE_68__ {TYPE_6__ f; } ;
struct TYPE_69__ {TYPE_7__ tus; void* addrLow; void* addrHigh; } ;
struct TYPE_66__ {void* addrLow; void* addrHigh; } ;
struct TYPE_70__ {TYPE_8__ xmit_bde64; TYPE_5__ rcv_bde64; } ;
struct TYPE_41__ {TYPE_9__ s2; } ;
struct TYPE_42__ {TYPE_10__ un; } ;
struct TYPE_55__ {scalar_t__* varWords; TYPE_16__ varUpdateCfg; TYPE_15__ varDmp; struct READ_EVENT_LOG_VAR varRdEventLog; TYPE_11__ varBIUdiag; } ;
struct TYPE_61__ {scalar_t__ mbxCommand; TYPE_23__ un; int mbxOwner; } ;
typedef TYPE_29__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_48__ {int bdeSize; } ;
struct TYPE_49__ {TYPE_17__ f; } ;
struct ulp_bde64 {void* addrLow; void* addrHigh; TYPE_18__ tus; } ;
struct lpfc_vport {int fc_flag; } ;
struct TYPE_54__ {struct READ_EVENT_LOG_VAR cfg_mhdr; } ;
struct lpfc_mbx_sli4_config {TYPE_22__ header; } ;
struct lpfc_mbx_nembed_cmd {TYPE_24__* sge; } ;
struct TYPE_59__ {int sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; TYPE_27__ sli; TYPE_4__* pport; } ;
struct lpfc_dmabuf {scalar_t__ phys; scalar_t__ virt; } ;
struct TYPE_51__ {scalar_t__ vendor_cmd; } ;
struct TYPE_62__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {scalar_t__ reply_payload_rcv_len; } ;
struct dfc_mbox_req {int inExtWLen; int outExtWLen; int mbOffset; } ;
struct TYPE_57__ {int inExtWLen; int outExtWLen; int mbOffset; TYPE_29__* ext; TYPE_29__* mb; TYPE_31__* pmboxq; struct lpfc_dmabuf* dmabuffers; } ;
struct TYPE_58__ {TYPE_25__ mbox; } ;
struct bsg_job_data {TYPE_26__ context_un; struct bsg_job* set_job; int type; } ;
struct TYPE_60__ {int payload_len; int sg_cnt; int sg_list; } ;
struct TYPE_64__ {int payload_len; int sg_cnt; int sg_list; } ;
struct bsg_job {TYPE_28__ reply_payload; struct bsg_job_data* dd_data; TYPE_3__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct TYPE_65__ {scalar_t__ stopped; } ;
struct TYPE_50__ {struct lpfc_mbx_sli4_config sli4_config; } ;
struct TYPE_52__ {TYPE_19__ un; } ;
struct TYPE_53__ {TYPE_20__ mqe; TYPE_29__ mb; } ;
struct TYPE_63__ {int in_ext_byte_len; int out_ext_byte_len; struct bsg_job_data* ctx_ndlp; int mbox_cmpl; TYPE_21__ u; int mbox_offset_word; TYPE_29__* ctx_buf; struct lpfc_vport* vport; } ;
struct TYPE_56__ {scalar_t__ length; void* pa_lo; void* pa_hi; } ;
typedef TYPE_29__ MAILBOX_t ;
typedef TYPE_31__ LPFC_MBOXQ_t ;


 int BSG_MBOX_SIZE ;
 scalar_t__ DMP_WELL_KNOWN ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int ERANGE ;
 int ETIME ;
 int FC_OFFLINE_MODE ;
 int GFP_KERNEL ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int LOG_MBOX ;
 int LPFC_BLOCK_MGMT_IO ;
 int LPFC_SLI_ACTIVE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_BUSY ;
 scalar_t__ MBX_DUMP_MEMORY ;
 int MBX_NOWAIT ;
 int MBX_POLL ;
 scalar_t__ MBX_READ_EVENT_LOG ;
 scalar_t__ MBX_RESTART ;
 scalar_t__ MBX_RUN_BIU_DIAG64 ;
 scalar_t__ MBX_SLI4_CONFIG ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 scalar_t__ MBX_UPDATE_CFG ;
 scalar_t__ MBX_WRITE_VPARMS ;
 scalar_t__ MBX_WRITE_WWN ;
 int OWN_HOST ;
 int SLI_CONFIG_HANDLED ;
 int TYPE_MBOX ;
 scalar_t__ bf_get (int ,struct READ_EVENT_LOG_VAR*) ;
 int kfree (struct bsg_job_data*) ;
 struct bsg_job_data* kmalloc (int,int ) ;
 int lpfc_bsg_check_cmd_access (struct lpfc_hba*,TYPE_29__*,struct lpfc_vport*) ;
 struct lpfc_dmabuf* lpfc_bsg_dma_page_alloc (struct lpfc_hba*) ;
 int lpfc_bsg_dma_page_free (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_bsg_handle_sli_cfg_ext (struct lpfc_hba*,struct bsg_job*,struct lpfc_dmabuf*) ;
 int lpfc_bsg_issue_mbox_cmpl ;
 int lpfc_event_log ;
 int lpfc_mbox_hdr_emb ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_31__*,int ) ;
 int memcpy (TYPE_29__*,TYPE_29__*,int) ;
 TYPE_31__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_31__*,int ) ;
 int memset (TYPE_31__*,int ,int) ;
 void* putPaddrHigh (scalar_t__) ;
 void* putPaddrLow (scalar_t__) ;
 scalar_t__ sg_copy_from_buffer (int ,int ,TYPE_29__*,scalar_t__) ;
 int sg_copy_to_buffer (int ,int ,TYPE_29__*,scalar_t__) ;

__attribute__((used)) static int
lpfc_bsg_issue_mbox(struct lpfc_hba *phba, struct bsg_job *job,
 struct lpfc_vport *vport)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 LPFC_MBOXQ_t *pmboxq = ((void*)0);
 MAILBOX_t *pmb;

 uint8_t *pmbx = ((void*)0);
 struct bsg_job_data *dd_data = ((void*)0);
 struct lpfc_dmabuf *dmabuf = ((void*)0);
 struct dfc_mbox_req *mbox_req;
 struct READ_EVENT_LOG_VAR *rdEventLog;
 uint32_t transmit_length, receive_length, mode;
 struct lpfc_mbx_sli4_config *sli4_config;
 struct lpfc_mbx_nembed_cmd *nembed_sge;
 struct ulp_bde64 *bde;
 uint8_t *ext = ((void*)0);
 int rc = 0;
 uint8_t *from;
 uint32_t size;


 bsg_reply->reply_payload_rcv_len = 0;


 if (job->reply_payload.payload_len > BSG_MBOX_SIZE ||
     job->request_payload.payload_len > BSG_MBOX_SIZE) {
  rc = -ERANGE;
  goto job_done;
 }





 if (phba->sli.sli_flag & LPFC_BLOCK_MGMT_IO) {
  rc = -EAGAIN;
  goto job_done;
 }

 mbox_req =
     (struct dfc_mbox_req *)bsg_request->rqst_data.h_vendor.vendor_cmd;


 if ((mbox_req->inExtWLen > BSG_MBOX_SIZE/sizeof(uint32_t)) ||
     (mbox_req->outExtWLen > BSG_MBOX_SIZE/sizeof(uint32_t))) {
  rc = -ERANGE;
  goto job_done;
 }

 dmabuf = lpfc_bsg_dma_page_alloc(phba);
 if (!dmabuf || !dmabuf->virt) {
  rc = -ENOMEM;
  goto job_done;
 }


 pmbx = (uint8_t *)dmabuf->virt;
 size = job->request_payload.payload_len;
 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt, pmbx, size);


 if (phba->sli_rev == LPFC_SLI_REV4) {
  rc = lpfc_bsg_handle_sli_cfg_ext(phba, job, dmabuf);
  if (rc == SLI_CONFIG_HANDLED)
   goto job_cont;
  if (rc)
   goto job_done;

 }

 rc = lpfc_bsg_check_cmd_access(phba, (MAILBOX_t *)pmbx, vport);
 if (rc != 0)
  goto job_done;


 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2727 Failed allocation of dd_data\n");
  rc = -ENOMEM;
  goto job_done;
 }

 pmboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmboxq) {
  rc = -ENOMEM;
  goto job_done;
 }
 memset(pmboxq, 0, sizeof(LPFC_MBOXQ_t));

 pmb = &pmboxq->u.mb;
 memcpy(pmb, pmbx, sizeof(*pmb));
 pmb->mbxOwner = OWN_HOST;
 pmboxq->vport = vport;




 if (phba->pport->stopped &&
     pmb->mbxCommand != MBX_DUMP_MEMORY &&
     pmb->mbxCommand != MBX_RESTART &&
     pmb->mbxCommand != MBX_WRITE_VPARMS &&
     pmb->mbxCommand != MBX_WRITE_WWN)
  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX,
    "2797 mbox: Issued mailbox cmd "
    "0x%x while in stopped state.\n",
    pmb->mbxCommand);


 if (mbox_req->inExtWLen || mbox_req->outExtWLen) {
  from = pmbx;
  ext = from + sizeof(MAILBOX_t);
  pmboxq->ctx_buf = ext;
  pmboxq->in_ext_byte_len =
   mbox_req->inExtWLen * sizeof(uint32_t);
  pmboxq->out_ext_byte_len =
   mbox_req->outExtWLen * sizeof(uint32_t);
  pmboxq->mbox_offset_word = mbox_req->mbOffset;
 }





 if (pmb->mbxCommand == MBX_RUN_BIU_DIAG64) {
  transmit_length = pmb->un.varWords[1];
  receive_length = pmb->un.varWords[4];



  if ((transmit_length > receive_length) ||
   (transmit_length > BSG_MBOX_SIZE - sizeof(MAILBOX_t))) {
   rc = -ERANGE;
   goto job_done;
  }
  pmb->un.varBIUdiag.un.s2.xmit_bde64.addrHigh =
   putPaddrHigh(dmabuf->phys + sizeof(MAILBOX_t));
  pmb->un.varBIUdiag.un.s2.xmit_bde64.addrLow =
   putPaddrLow(dmabuf->phys + sizeof(MAILBOX_t));

  pmb->un.varBIUdiag.un.s2.rcv_bde64.addrHigh =
   putPaddrHigh(dmabuf->phys + sizeof(MAILBOX_t)
     + pmb->un.varBIUdiag.un.s2.xmit_bde64.tus.f.bdeSize);
  pmb->un.varBIUdiag.un.s2.rcv_bde64.addrLow =
   putPaddrLow(dmabuf->phys + sizeof(MAILBOX_t)
     + pmb->un.varBIUdiag.un.s2.xmit_bde64.tus.f.bdeSize);
 } else if (pmb->mbxCommand == MBX_READ_EVENT_LOG) {
  rdEventLog = &pmb->un.varRdEventLog;
  receive_length = rdEventLog->rcv_bde64.tus.f.bdeSize;
  mode = bf_get(lpfc_event_log, rdEventLog);




  if (receive_length > BSG_MBOX_SIZE - sizeof(MAILBOX_t)) {
   rc = -ERANGE;
   goto job_done;
  }


  if (mode == 0) {
   pmb->un.varWords[3] = putPaddrLow(dmabuf->phys
       + sizeof(MAILBOX_t));
   pmb->un.varWords[4] = putPaddrHigh(dmabuf->phys
       + sizeof(MAILBOX_t));
  }
 } else if (phba->sli_rev == LPFC_SLI_REV4) {




  if ((pmb->mbxCommand == MBX_DUMP_MEMORY) &&
   (pmb->un.varDmp.type != DMP_WELL_KNOWN)) {



   receive_length = pmb->un.varWords[2];



   if (receive_length == 0) {
    rc = -ERANGE;
    goto job_done;
   }
   pmb->un.varWords[3] = putPaddrLow(dmabuf->phys
      + sizeof(MAILBOX_t));
   pmb->un.varWords[4] = putPaddrHigh(dmabuf->phys
      + sizeof(MAILBOX_t));
  } else if ((pmb->mbxCommand == MBX_UPDATE_CFG) &&
   pmb->un.varUpdateCfg.co) {
   bde = (struct ulp_bde64 *)&pmb->un.varWords[4];


   if (bde->tus.f.bdeSize >
       BSG_MBOX_SIZE - sizeof(MAILBOX_t)) {
    rc = -ERANGE;
    goto job_done;
   }
   bde->addrHigh = putPaddrHigh(dmabuf->phys
      + sizeof(MAILBOX_t));
   bde->addrLow = putPaddrLow(dmabuf->phys
      + sizeof(MAILBOX_t));
  } else if (pmb->mbxCommand == MBX_SLI4_CONFIG) {

   sli4_config = &pmboxq->u.mqe.un.sli4_config;
   if (!bf_get(lpfc_mbox_hdr_emb,
       &sli4_config->header.cfg_mhdr)) {



    nembed_sge = (struct lpfc_mbx_nembed_cmd *)
      &pmb->un.varWords[0];
    receive_length = nembed_sge->sge[0].length;




    if ((receive_length == 0) ||
        (receive_length >
         BSG_MBOX_SIZE - sizeof(MAILBOX_t))) {
     rc = -ERANGE;
     goto job_done;
    }

    nembed_sge->sge[0].pa_hi =
      putPaddrHigh(dmabuf->phys
         + sizeof(MAILBOX_t));
    nembed_sge->sge[0].pa_lo =
      putPaddrLow(dmabuf->phys
         + sizeof(MAILBOX_t));
   }
  }
 }

 dd_data->context_un.mbox.dmabuffers = dmabuf;


 pmboxq->mbox_cmpl = lpfc_bsg_issue_mbox_cmpl;


 pmboxq->ctx_ndlp = dd_data;
 dd_data->type = TYPE_MBOX;
 dd_data->set_job = job;
 dd_data->context_un.mbox.pmboxq = pmboxq;
 dd_data->context_un.mbox.mb = (MAILBOX_t *)pmbx;
 dd_data->context_un.mbox.ext = ext;
 dd_data->context_un.mbox.mbOffset = mbox_req->mbOffset;
 dd_data->context_un.mbox.inExtWLen = mbox_req->inExtWLen;
 dd_data->context_un.mbox.outExtWLen = mbox_req->outExtWLen;
 job->dd_data = dd_data;

 if ((vport->fc_flag & FC_OFFLINE_MODE) ||
     (!(phba->sli.sli_flag & LPFC_SLI_ACTIVE))) {
  rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_POLL);
  if (rc != MBX_SUCCESS) {
   rc = (rc == MBX_TIMEOUT) ? -ETIME : -ENODEV;
   goto job_done;
  }


  memcpy(pmbx, pmb, sizeof(*pmb));
  bsg_reply->reply_payload_rcv_len =
   sg_copy_from_buffer(job->reply_payload.sg_list,
         job->reply_payload.sg_cnt,
         pmbx, size);

  rc = 0;
  goto job_done;
 }

 rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_NOWAIT);
 if ((rc == MBX_SUCCESS) || (rc == MBX_BUSY))
  return 1;

job_done:

 if (pmboxq)
  mempool_free(pmboxq, phba->mbox_mem_pool);
 lpfc_bsg_dma_page_free(phba, dmabuf);
 kfree(dd_data);

job_cont:
 return rc;
}
