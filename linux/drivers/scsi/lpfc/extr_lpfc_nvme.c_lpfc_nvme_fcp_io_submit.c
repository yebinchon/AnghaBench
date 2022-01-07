
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
struct nvmefc_fcp_req {scalar_t__ io_dir; scalar_t__ sg_cnt; scalar_t__ cmdaddr; struct lpfc_nvme_fcpreq_priv* private; } ;
struct nvme_fc_remote_port {int port_id; scalar_t__ private; } ;
struct nvme_fc_local_port {scalar_t__ private; } ;
struct nvme_common_command {scalar_t__ opcode; } ;
struct TYPE_7__ {struct nvme_common_command common; } ;
struct nvme_fc_cmd_iu {TYPE_2__ sqe; } ;
struct lpfc_vport {int load_flag; int fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nvme_rport {struct lpfc_nodelist* ndlp; } ;
struct lpfc_nvme_qhandle {int index; scalar_t__ qidx; } ;
struct lpfc_nvme_lport {int xmt_fcp_wqerr; int xmt_fcp_err; int xmt_fcp_noxri; int xmt_fcp_qdepth; int xmt_fcp_bad_ndlp; struct lpfc_vport* vport; } ;
struct lpfc_nvme_fcpreq_priv {struct lpfc_io_buf* nvme_buf; } ;
struct lpfc_nodelist {int nlp_type; int nlp_DID; int cmd_qdepth; int cmd_pending; int upcall_flags; int nlp_state; } ;
struct TYPE_10__ {int sli4_xritag; int hba_wqidx; } ;
struct lpfc_io_buf {int cpu; struct nvmefc_fcp_req* nvmeCmd; void* ts_cmd_wqput; void* ts_cmd_start; int hdwq_no; TYPE_5__ cur_iocbq; int hdwq; scalar_t__ qidx; struct lpfc_nodelist* ndlp; int ts_last_cmd; } ;
struct TYPE_9__ {TYPE_1__* hdwq; TYPE_3__* cpu_map; } ;
struct lpfc_hba {scalar_t__ cfg_fcp_io_sched; int cpucheck_on; TYPE_4__ sli4_hba; scalar_t__ cfg_xri_rebalancing; int ktime_last_cmd; scalar_t__ ktime_on; } ;
struct lpfc_fc4_ctrl_stat {int control_requests; int input_requests; int output_requests; } ;
struct TYPE_8__ {int hdwq; } ;
struct TYPE_6__ {int * cpucheck_xmt_io; struct lpfc_fc4_ctrl_stat nvme_cstat; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int FC_UNLOADING ;
 int KERN_INFO ;
 int LOG_NODE ;
 int LOG_NVME_IOERR ;
 int LPFC_CHECK_CPU_CNT ;
 int LPFC_CHECK_NVME_IO ;
 scalar_t__ LPFC_FCP_SCHED_BY_HDWQ ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_NVME_TARGET ;
 int NLP_STE_MAPPED_NODE ;
 scalar_t__ NVMEFC_FCP_WRITE ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 void* ktime_get_ns () ;
 struct lpfc_io_buf* lpfc_get_nvme_buf (struct lpfc_hba*,struct lpfc_nodelist*,int,int) ;
 int lpfc_keep_pvt_pool_above_lowwm (struct lpfc_hba*,int ) ;
 scalar_t__ lpfc_ndlp_check_qdepth (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_nvme_prep_io_cmd (struct lpfc_vport*,struct lpfc_io_buf*,struct lpfc_nodelist*,struct lpfc_fc4_ctrl_stat*) ;
 int lpfc_nvme_prep_io_dma (struct lpfc_vport*,struct lpfc_io_buf*) ;
 int lpfc_nvmeio_data (struct lpfc_hba*,char*,int ,int,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int,char*,...) ;
 int lpfc_release_nvme_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_sli4_issue_wqe (struct lpfc_hba*,int ,TYPE_5__*) ;
 scalar_t__ nvme_admin_keep_alive ;
 int raw_smp_processor_id () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_nvme_fcp_io_submit(struct nvme_fc_local_port *pnvme_lport,
   struct nvme_fc_remote_port *pnvme_rport,
   void *hw_queue_handle,
   struct nvmefc_fcp_req *pnvme_fcreq)
{
 int ret = 0;
 int expedite = 0;
 int idx, cpu;
 struct lpfc_nvme_lport *lport;
 struct lpfc_fc4_ctrl_stat *cstat;
 struct lpfc_vport *vport;
 struct lpfc_hba *phba;
 struct lpfc_nodelist *ndlp;
 struct lpfc_io_buf *lpfc_ncmd;
 struct lpfc_nvme_rport *rport;
 struct lpfc_nvme_qhandle *lpfc_queue_info;
 struct lpfc_nvme_fcpreq_priv *freqpriv;
 struct nvme_common_command *sqe;







 lport = (struct lpfc_nvme_lport *)pnvme_lport->private;
 if (unlikely(!lport)) {
  ret = -EINVAL;
  goto out_fail;
 }

 vport = lport->vport;

 if (unlikely(!hw_queue_handle)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6117 Fail IO, NULL hw_queue_handle\n");
  atomic_inc(&lport->xmt_fcp_err);
  ret = -EBUSY;
  goto out_fail;
 }

 phba = vport->phba;

 if (vport->load_flag & FC_UNLOADING) {
  ret = -ENODEV;
  goto out_fail;
 }

 if (unlikely(vport->load_flag & FC_UNLOADING)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6124 Fail IO, Driver unload\n");
  atomic_inc(&lport->xmt_fcp_err);
  ret = -ENODEV;
  goto out_fail;
 }

 freqpriv = pnvme_fcreq->private;
 if (unlikely(!freqpriv)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6158 Fail IO, NULL request data\n");
  atomic_inc(&lport->xmt_fcp_err);
  ret = -EINVAL;
  goto out_fail;
 }





 rport = (struct lpfc_nvme_rport *)pnvme_rport->private;
 lpfc_queue_info = (struct lpfc_nvme_qhandle *)hw_queue_handle;





 ndlp = rport->ndlp;
 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE | LOG_NVME_IOERR,
     "6053 Busy IO, ndlp not ready: rport x%px "
      "ndlp x%px, DID x%06x\n",
     rport, ndlp, pnvme_rport->port_id);
  atomic_inc(&lport->xmt_fcp_err);
  ret = -EBUSY;
  goto out_fail;
 }


 if ((ndlp->nlp_type & NLP_NVME_TARGET) &&
     (ndlp->nlp_state != NLP_STE_MAPPED_NODE)) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NODE | LOG_NVME_IOERR,
     "6036 Fail IO, DID x%06x not ready for "
     "IO. State x%x, Type x%x Flg x%x\n",
     pnvme_rport->port_id,
     ndlp->nlp_state, ndlp->nlp_type,
     ndlp->upcall_flags);
  atomic_inc(&lport->xmt_fcp_bad_ndlp);
  ret = -EBUSY;
  goto out_fail;

 }





 if (!lpfc_queue_info->qidx && !pnvme_fcreq->sg_cnt) {
  sqe = &((struct nvme_fc_cmd_iu *)
   pnvme_fcreq->cmdaddr)->sqe.common;
  if (sqe->opcode == nvme_admin_keep_alive)
   expedite = 1;
 }




 if (lpfc_ndlp_check_qdepth(phba, ndlp)) {
  if ((atomic_read(&ndlp->cmd_pending) >= ndlp->cmd_qdepth) &&
      !expedite) {
   lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
      "6174 Fail IO, ndlp qdepth exceeded: "
      "idx %d DID %x pend %d qdepth %d\n",
      lpfc_queue_info->index, ndlp->nlp_DID,
      atomic_read(&ndlp->cmd_pending),
      ndlp->cmd_qdepth);
   atomic_inc(&lport->xmt_fcp_qdepth);
   ret = -EBUSY;
   goto out_fail;
  }
 }


 if (phba->cfg_fcp_io_sched == LPFC_FCP_SCHED_BY_HDWQ) {
  idx = lpfc_queue_info->index;
 } else {
  cpu = raw_smp_processor_id();
  idx = phba->sli4_hba.cpu_map[cpu].hdwq;
 }

 lpfc_ncmd = lpfc_get_nvme_buf(phba, ndlp, idx, expedite);
 if (lpfc_ncmd == ((void*)0)) {
  atomic_inc(&lport->xmt_fcp_noxri);
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6065 Fail IO, driver buffer pool is empty: "
     "idx %d DID %x\n",
     lpfc_queue_info->index, ndlp->nlp_DID);
  ret = -EBUSY;
  goto out_fail;
 }
 freqpriv->nvme_buf = lpfc_ncmd;
 lpfc_ncmd->nvmeCmd = pnvme_fcreq;
 lpfc_ncmd->ndlp = ndlp;
 lpfc_ncmd->qidx = lpfc_queue_info->qidx;
 lpfc_ncmd->cur_iocbq.hba_wqidx = idx;
 cstat = &phba->sli4_hba.hdwq[idx].nvme_cstat;

 lpfc_nvme_prep_io_cmd(vport, lpfc_ncmd, ndlp, cstat);
 ret = lpfc_nvme_prep_io_dma(vport, lpfc_ncmd);
 if (ret) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6175 Fail IO, Prep DMA: "
     "idx %d DID %x\n",
     lpfc_queue_info->index, ndlp->nlp_DID);
  atomic_inc(&lport->xmt_fcp_err);
  ret = -ENOMEM;
  goto out_free_nvme_buf;
 }

 lpfc_nvmeio_data(phba, "NVME FCP XMIT: xri x%x idx %d to %06x\n",
    lpfc_ncmd->cur_iocbq.sli4_xritag,
    lpfc_queue_info->index, ndlp->nlp_DID);

 ret = lpfc_sli4_issue_wqe(phba, lpfc_ncmd->hdwq, &lpfc_ncmd->cur_iocbq);
 if (ret) {
  atomic_inc(&lport->xmt_fcp_wqerr);
  lpfc_printf_vlog(vport, KERN_INFO, LOG_NVME_IOERR,
     "6113 Fail IO, Could not issue WQE err %x "
     "sid: x%x did: x%x oxid: x%x\n",
     ret, vport->fc_myDID, ndlp->nlp_DID,
     lpfc_ncmd->cur_iocbq.sli4_xritag);
  goto out_free_nvme_buf;
 }

 if (phba->cfg_xri_rebalancing)
  lpfc_keep_pvt_pool_above_lowwm(phba, lpfc_ncmd->hdwq_no);
 return 0;

 out_free_nvme_buf:
 if (lpfc_ncmd->nvmeCmd->sg_cnt) {
  if (lpfc_ncmd->nvmeCmd->io_dir == NVMEFC_FCP_WRITE)
   cstat->output_requests--;
  else
   cstat->input_requests--;
 } else
  cstat->control_requests--;
 lpfc_release_nvme_buf(phba, lpfc_ncmd);
 out_fail:
 return ret;
}
