
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


typedef size_t uint32_t ;
typedef void* uint16_t ;
struct nvmefc_fcp_req {int rcv_rsplen; int (* done ) (struct nvmefc_fcp_req*) ;struct lpfc_nvme_fcpreq_priv* private; int status; int transferred_length; int payload_length; int sqid; scalar_t__ cmdaddr; scalar_t__ rspaddr; } ;
struct TYPE_17__ {int u64; } ;
struct TYPE_18__ {scalar_t__ status; void* command_id; int sq_id; void* sq_head; TYPE_8__ result; } ;
struct nvme_fc_ersp_iu {int rsn; TYPE_9__ cqe; scalar_t__ rsvd12; int xfrd_len; int iu_len; } ;
struct TYPE_15__ {void* command_id; } ;
struct TYPE_16__ {TYPE_6__ common; } ;
struct nvme_fc_cmd_iu {TYPE_7__ sqe; } ;
struct lpfc_wcqe_complete {int parameter; int total_data_placed; } ;
struct lpfc_vport {TYPE_4__* localport; } ;
struct lpfc_nvme_lport {int cmpl_fcp_err; int cmpl_fcp_xb; } ;
struct lpfc_nvme_fcpreq_priv {int * nvme_buf; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {int isr_timestamp; struct lpfc_vport* vport; scalar_t__ context1; } ;
struct TYPE_14__ {size_t hba_wqidx; int sli4_xritag; } ;
struct lpfc_io_buf {int status; int result; int flags; size_t cpu; int buf_lock; struct nvmefc_fcp_req* nvmeCmd; TYPE_5__ cur_iocbq; int ts_data_nvme; int ts_isr_cmpl; scalar_t__ ts_cmd_start; struct lpfc_nodelist* ndlp; } ;
struct TYPE_12__ {TYPE_2__* hdwq; } ;
struct lpfc_hba {int cpucheck_on; TYPE_3__ sli4_hba; int ktime_last_cmd; } ;
struct TYPE_13__ {scalar_t__ private; } ;
struct TYPE_10__ {int io_cmpls; } ;
struct TYPE_11__ {int * cpucheck_cmpl_io; TYPE_1__ nvme_cstat; } ;


 size_t CQE_CODE_NVME_ERSP ;
 int IOERR_ABORT_REQUESTED ;
 int IOERR_PARAM_MASK ;



 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_NODE ;
 int LOG_NVME_IOERR ;
 size_t LPFC_CHECK_CPU_CNT ;
 int LPFC_CHECK_NVME_IO ;
 size_t LPFC_IOCB_STATUS_MASK ;
 int LPFC_NVME_ERSP_LEN ;
 int LPFC_SBUF_XBUSY ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NVME_SC_INTERNAL ;
 int atomic_inc (int *) ;
 void* bf_get (int ,struct lpfc_wcqe_complete*) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int ktime_get_ns () ;
 int lpfc_nvme_ktime (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_nvmeio_data (struct lpfc_hba*,char*,int ,size_t,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,...) ;
 int lpfc_release_nvme_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_wcqe_c_code ;
 int lpfc_wcqe_c_ersp0 ;
 int lpfc_wcqe_c_sqhead ;
 int lpfc_wcqe_c_status ;
 int lpfc_wcqe_c_xb ;
 size_t raw_smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nvmefc_fcp_req*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
lpfc_nvme_io_cmd_wqe_cmpl(struct lpfc_hba *phba, struct lpfc_iocbq *pwqeIn,
     struct lpfc_wcqe_complete *wcqe)
{
 struct lpfc_io_buf *lpfc_ncmd =
  (struct lpfc_io_buf *)pwqeIn->context1;
 struct lpfc_vport *vport = pwqeIn->vport;
 struct nvmefc_fcp_req *nCmd;
 struct nvme_fc_ersp_iu *ep;
 struct nvme_fc_cmd_iu *cp;
 struct lpfc_nodelist *ndlp;
 struct lpfc_nvme_fcpreq_priv *freqpriv;
 struct lpfc_nvme_lport *lport;
 uint32_t code, status, idx;
 uint16_t cid, sqhd, data;
 uint32_t *ptr;


 if (!lpfc_ncmd) {
  lpfc_printf_vlog(vport, KERN_ERR,
     LOG_NODE | LOG_NVME_IOERR,
     "6071 Null lpfc_ncmd pointer. No "
     "release, skip completion\n");
  return;
 }


 spin_lock(&lpfc_ncmd->buf_lock);

 if (!lpfc_ncmd->nvmeCmd) {
  spin_unlock(&lpfc_ncmd->buf_lock);
  lpfc_printf_vlog(vport, KERN_ERR, LOG_NODE | LOG_NVME_IOERR,
     "6066 Missing cmpl ptrs: lpfc_ncmd x%px, "
     "nvmeCmd x%px\n",
     lpfc_ncmd, lpfc_ncmd->nvmeCmd);


  lpfc_release_nvme_buf(phba, lpfc_ncmd);
  return;
 }
 nCmd = lpfc_ncmd->nvmeCmd;
 status = bf_get(lpfc_wcqe_c_status, wcqe);

 idx = lpfc_ncmd->cur_iocbq.hba_wqidx;
 phba->sli4_hba.hdwq[idx].nvme_cstat.io_cmpls++;

 if (unlikely(status && vport->localport)) {
  lport = (struct lpfc_nvme_lport *)vport->localport->private;
  if (lport) {
   if (bf_get(lpfc_wcqe_c_xb, wcqe))
    atomic_inc(&lport->cmpl_fcp_xb);
   atomic_inc(&lport->cmpl_fcp_err);
  }
 }

 lpfc_nvmeio_data(phba, "NVME FCP CMPL: xri x%x stat x%x parm x%x\n",
    lpfc_ncmd->cur_iocbq.sli4_xritag,
    status, wcqe->parameter);




 ndlp = lpfc_ncmd->ndlp;
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp)) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_IOERR,
     "6062 Ignoring NVME cmpl.  No ndlp\n");
  goto out_err;
 }

 code = bf_get(lpfc_wcqe_c_code, wcqe);
 if (code == CQE_CODE_NVME_ERSP) {

  ep = (struct nvme_fc_ersp_iu *)nCmd->rspaddr;





  cp = (struct nvme_fc_cmd_iu *)nCmd->cmdaddr;
  cid = cp->sqe.common.command_id;







  sqhd = bf_get(lpfc_wcqe_c_sqhead, wcqe);


  ep->iu_len = cpu_to_be16(8);
  ep->rsn = wcqe->parameter;
  ep->xfrd_len = cpu_to_be32(nCmd->payload_length);
  ep->rsvd12 = 0;
  ptr = (uint32_t *)&ep->cqe.result.u64;
  *ptr++ = wcqe->total_data_placed;
  data = bf_get(lpfc_wcqe_c_ersp0, wcqe);
  *ptr = (uint32_t)data;
  ep->cqe.sq_head = sqhd;
  ep->cqe.sq_id = nCmd->sqid;
  ep->cqe.command_id = cid;
  ep->cqe.status = 0;

  lpfc_ncmd->status = 128;
  lpfc_ncmd->result = 0;
  nCmd->rcv_rsplen = LPFC_NVME_ERSP_LEN;
  nCmd->transferred_length = nCmd->payload_length;
 } else {
  lpfc_ncmd->status = (status & LPFC_IOCB_STATUS_MASK);
  lpfc_ncmd->result = (wcqe->parameter & IOERR_PARAM_MASK);
  switch (lpfc_ncmd->status) {
  case 128:
   nCmd->transferred_length = wcqe->total_data_placed;
   nCmd->rcv_rsplen = 0;
   nCmd->status = 0;
   break;
  case 130:
   nCmd->transferred_length = wcqe->total_data_placed;
   nCmd->rcv_rsplen = wcqe->parameter;
   nCmd->status = 0;

   if (nCmd->rcv_rsplen == LPFC_NVME_ERSP_LEN)
    break;
   lpfc_printf_vlog(vport, KERN_ERR, LOG_NVME_IOERR,
      "6081 NVME Completion Protocol Error: "
      "xri %x status x%x result x%x "
      "placed x%x\n",
      lpfc_ncmd->cur_iocbq.sli4_xritag,
      lpfc_ncmd->status, lpfc_ncmd->result,
      wcqe->total_data_placed);
   break;
  case 129:

   if (lpfc_ncmd->result == IOERR_ABORT_REQUESTED)
    lpfc_printf_vlog(vport, KERN_INFO,
      LOG_NVME_IOERR,
      "6032 Delay Aborted cmd x%px "
      "nvme cmd x%px, xri x%x, "
      "xb %d\n",
      lpfc_ncmd, nCmd,
      lpfc_ncmd->cur_iocbq.sli4_xritag,
      bf_get(lpfc_wcqe_c_xb, wcqe));

  default:
out_err:
   lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
      "6072 NVME Completion Error: xri %x "
      "status x%x result x%x [x%x] "
      "placed x%x\n",
      lpfc_ncmd->cur_iocbq.sli4_xritag,
      lpfc_ncmd->status, lpfc_ncmd->result,
      wcqe->parameter,
      wcqe->total_data_placed);
   nCmd->transferred_length = 0;
   nCmd->rcv_rsplen = 0;
   nCmd->status = NVME_SC_INTERNAL;
  }
 }


 if (bf_get(lpfc_wcqe_c_xb, wcqe))
  lpfc_ncmd->flags |= LPFC_SBUF_XBUSY;
 else
  lpfc_ncmd->flags &= ~LPFC_SBUF_XBUSY;
 if (!(lpfc_ncmd->flags & LPFC_SBUF_XBUSY)) {
  freqpriv = nCmd->private;
  freqpriv->nvme_buf = ((void*)0);
  lpfc_ncmd->nvmeCmd = ((void*)0);
  spin_unlock(&lpfc_ncmd->buf_lock);
  nCmd->done(nCmd);
 } else
  spin_unlock(&lpfc_ncmd->buf_lock);


 lpfc_release_nvme_buf(phba, lpfc_ncmd);
}
