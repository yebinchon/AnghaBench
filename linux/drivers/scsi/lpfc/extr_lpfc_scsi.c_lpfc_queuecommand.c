
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int uint32_t ;
typedef int u64 ;
struct scsi_cmnd {int result; int* cmnd; unsigned char* host_scribble; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_13__* request; TYPE_10__* device; } ;
struct lpfc_vport {int fc_myDID; struct lpfc_hba* phba; } ;
struct TYPE_20__ {int control_requests; int input_requests; int output_requests; } ;
struct lpfc_sli4_hdw_queue {TYPE_4__ scsi_cstat; int * cpucheck_xmt_io; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct TYPE_24__ {int * wwn; } ;
struct TYPE_25__ {TYPE_8__ u; } ;
struct TYPE_22__ {int * wwn; } ;
struct TYPE_23__ {TYPE_6__ u; } ;
struct lpfc_nodelist {scalar_t__ cmd_qdepth; int nlp_DID; TYPE_9__ nlp_portname; TYPE_7__ nlp_nodename; int cmd_pending; int nlp_sid; } ;
struct TYPE_17__ {int ulpTimeout; int ulpIoTag; int ulpContext; } ;
struct TYPE_15__ {int sli4_xritag; TYPE_1__ iocb; } ;
struct lpfc_io_buf {size_t hdwq_no; TYPE_3__* fcp_cmnd; TYPE_11__ cur_iocbq; struct lpfc_nodelist* ndlp; struct lpfc_rport_data* rdata; struct scsi_cmnd* pCmd; } ;
struct TYPE_21__ {struct lpfc_sli4_hdw_queue* hdwq; } ;
struct TYPE_18__ {int * sli3_ring; } ;
struct lpfc_hba {int sli3_options; int cpucheck_on; scalar_t__ sli_rev; int cfg_poll; TYPE_5__ sli4_hba; scalar_t__ cfg_xri_rebalancing; TYPE_2__ sli; scalar_t__ cfg_enable_bg; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_19__ {int fcpCntl3; } ;
struct TYPE_16__ {int timeout; } ;
struct TYPE_14__ {int id; int lun; } ;


 int DID_ERROR ;
 int DISABLE_FCP_RING_INT ;
 int ENABLE_FCP_RING_POLLING ;
 int HA_R0RE_REQ ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_BG ;
 int LOG_FCP ;
 int LOG_FCP_ERROR ;
 int LOG_SCSI_CMD ;
 int LPFC_CHECK_CPU_CNT ;
 int LPFC_CHECK_SCSI_IO ;
 size_t LPFC_FCP_RING ;
 int LPFC_SLI3_BG_ENABLED ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;

 int SCSI_MLQUEUE_HOST_BUSY ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 size_t SCSI_PROT_NORMAL ;
 int SLI_IOCB_RET_IOCB ;

 scalar_t__ atomic_read (int *) ;
 int blk_rq_sectors (TYPE_13__*) ;
 int * dif_op_str ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int lpfc_bg_scsi_prep_dma_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 struct lpfc_io_buf* lpfc_get_scsi_buf (struct lpfc_hba*,struct lpfc_nodelist*,struct scsi_cmnd*) ;
 int lpfc_keep_pvt_pool_above_lowwm (struct lpfc_hba*,size_t) ;
 scalar_t__ lpfc_ndlp_check_qdepth (struct lpfc_hba*,struct lpfc_nodelist*) ;
 int lpfc_poll_rearm_timer (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,size_t,int ) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_rampdown_queue_depth (struct lpfc_hba*) ;
 int lpfc_release_scsi_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 struct lpfc_rport_data* lpfc_rport_data_from_scsi_device (TYPE_10__*) ;
 int lpfc_scsi_prep_cmnd (struct lpfc_vport*,struct lpfc_io_buf*,struct lpfc_nodelist*) ;
 int lpfc_scsi_prep_dma_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_scsi_unprep_dma_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_sli_handle_fast_ring_event (struct lpfc_hba*,int *,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,size_t,TYPE_11__*,int ) ;
 int raw_smp_processor_id () ;
 scalar_t__ scsi_get_lba (struct scsi_cmnd*) ;
 size_t scsi_get_prot_op (struct scsi_cmnd*) ;
 int scsi_target (TYPE_10__*) ;
 struct fc_rport* starget_to_rport (int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_queuecommand(struct Scsi_Host *shost, struct scsi_cmnd *cmnd)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_rport_data *rdata;
 struct lpfc_nodelist *ndlp;
 struct lpfc_io_buf *lpfc_cmd;
 struct fc_rport *rport = starget_to_rport(scsi_target(cmnd->device));
 int err, idx;




 rdata = lpfc_rport_data_from_scsi_device(cmnd->device);


 if (unlikely(!rdata) || unlikely(!rport))
  goto out_fail_command;

 err = fc_remote_port_chkready(rport);
 if (err) {
  cmnd->result = err;
  goto out_fail_command;
 }
 ndlp = rdata->pnode;

 if ((scsi_get_prot_op(cmnd) != SCSI_PROT_NORMAL) &&
  (!(phba->sli3_options & LPFC_SLI3_BG_ENABLED))) {

  lpfc_printf_log(phba, KERN_ERR, LOG_BG,
    "9058 BLKGRD: ERROR: rcvd protected cmd:%02x"
    " op:%02x str=%s without registering for"
    " BlockGuard - Rejecting command\n",
    cmnd->cmnd[0], scsi_get_prot_op(cmnd),
    dif_op_str[scsi_get_prot_op(cmnd)]);
  goto out_fail_command;
 }





 if (!ndlp || !NLP_CHK_NODE_ACT(ndlp))
  goto out_tgt_busy;
 if (lpfc_ndlp_check_qdepth(phba, ndlp)) {
  if (atomic_read(&ndlp->cmd_pending) >= ndlp->cmd_qdepth) {
   lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP_ERROR,
      "3377 Target Queue Full, scsi Id:%d "
      "Qdepth:%d Pending command:%d"
      " WWNN:%02x:%02x:%02x:%02x:"
      "%02x:%02x:%02x:%02x, "
      " WWPN:%02x:%02x:%02x:%02x:"
      "%02x:%02x:%02x:%02x",
      ndlp->nlp_sid, ndlp->cmd_qdepth,
      atomic_read(&ndlp->cmd_pending),
      ndlp->nlp_nodename.u.wwn[0],
      ndlp->nlp_nodename.u.wwn[1],
      ndlp->nlp_nodename.u.wwn[2],
      ndlp->nlp_nodename.u.wwn[3],
      ndlp->nlp_nodename.u.wwn[4],
      ndlp->nlp_nodename.u.wwn[5],
      ndlp->nlp_nodename.u.wwn[6],
      ndlp->nlp_nodename.u.wwn[7],
      ndlp->nlp_portname.u.wwn[0],
      ndlp->nlp_portname.u.wwn[1],
      ndlp->nlp_portname.u.wwn[2],
      ndlp->nlp_portname.u.wwn[3],
      ndlp->nlp_portname.u.wwn[4],
      ndlp->nlp_portname.u.wwn[5],
      ndlp->nlp_portname.u.wwn[6],
      ndlp->nlp_portname.u.wwn[7]);
   goto out_tgt_busy;
  }
 }

 lpfc_cmd = lpfc_get_scsi_buf(phba, ndlp, cmnd);
 if (lpfc_cmd == ((void*)0)) {
  lpfc_rampdown_queue_depth(phba);

  lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP_ERROR,
     "0707 driver's buffer pool is empty, "
     "IO busied\n");
  goto out_host_busy;
 }





 lpfc_cmd->pCmd = cmnd;
 lpfc_cmd->rdata = rdata;
 lpfc_cmd->ndlp = ndlp;
 cmnd->host_scribble = (unsigned char *)lpfc_cmd;

 if (scsi_get_prot_op(cmnd) != SCSI_PROT_NORMAL) {
  if (vport->phba->cfg_enable_bg) {
   lpfc_printf_vlog(vport,
      KERN_INFO, LOG_SCSI_CMD,
      "9033 BLKGRD: rcvd %s cmd:x%x "
      "sector x%llx cnt %u pt %x\n",
      dif_op_str[scsi_get_prot_op(cmnd)],
      cmnd->cmnd[0],
      (unsigned long long)scsi_get_lba(cmnd),
      blk_rq_sectors(cmnd->request),
      (cmnd->cmnd[1]>>5));
  }
  err = lpfc_bg_scsi_prep_dma_buf(phba, lpfc_cmd);
 } else {
  if (vport->phba->cfg_enable_bg) {
   lpfc_printf_vlog(vport,
      KERN_INFO, LOG_SCSI_CMD,
      "9038 BLKGRD: rcvd PROT_NORMAL cmd: "
      "x%x sector x%llx cnt %u pt %x\n",
      cmnd->cmnd[0],
      (unsigned long long)scsi_get_lba(cmnd),
      blk_rq_sectors(cmnd->request),
      (cmnd->cmnd[1]>>5));
  }
  err = lpfc_scsi_prep_dma_buf(phba, lpfc_cmd);
 }

 if (err == 2) {
  cmnd->result = DID_ERROR << 16;
  goto out_fail_command_release_buf;
 } else if (err) {
  goto out_host_busy_free_buf;
 }

 lpfc_scsi_prep_cmnd(vport, lpfc_cmd, ndlp);
 err = lpfc_sli_issue_iocb(phba, LPFC_FCP_RING,
      &lpfc_cmd->cur_iocbq, SLI_IOCB_RET_IOCB);
 if (err) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
     "3376 FCP could not issue IOCB err %x"
     "FCP cmd x%x <%d/%llu> "
     "sid: x%x did: x%x oxid: x%x "
     "Data: x%x x%x x%x x%x\n",
     err, cmnd->cmnd[0],
     cmnd->device ? cmnd->device->id : 0xffff,
     cmnd->device ? cmnd->device->lun : (u64) -1,
     vport->fc_myDID, ndlp->nlp_DID,
     phba->sli_rev == LPFC_SLI_REV4 ?
     lpfc_cmd->cur_iocbq.sli4_xritag : 0xffff,
     lpfc_cmd->cur_iocbq.iocb.ulpContext,
     lpfc_cmd->cur_iocbq.iocb.ulpIoTag,
     lpfc_cmd->cur_iocbq.iocb.ulpTimeout,
     (uint32_t)
     (cmnd->request->timeout / 1000));

  goto out_host_busy_free_buf;
 }
 if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
  lpfc_sli_handle_fast_ring_event(phba,
   &phba->sli.sli3_ring[LPFC_FCP_RING], HA_R0RE_REQ);

  if (phba->cfg_poll & DISABLE_FCP_RING_INT)
   lpfc_poll_rearm_timer(phba);
 }

 if (phba->cfg_xri_rebalancing)
  lpfc_keep_pvt_pool_above_lowwm(phba, lpfc_cmd->hdwq_no);

 return 0;

 out_host_busy_free_buf:
 idx = lpfc_cmd->hdwq_no;
 lpfc_scsi_unprep_dma_buf(phba, lpfc_cmd);
 if (phba->sli4_hba.hdwq) {
  switch (lpfc_cmd->fcp_cmnd->fcpCntl3) {
  case 128:
   phba->sli4_hba.hdwq[idx].scsi_cstat.output_requests--;
   break;
  case 129:
   phba->sli4_hba.hdwq[idx].scsi_cstat.input_requests--;
   break;
  default:
   phba->sli4_hba.hdwq[idx].scsi_cstat.control_requests--;
  }
 }
 lpfc_release_scsi_buf(phba, lpfc_cmd);
 out_host_busy:
 return SCSI_MLQUEUE_HOST_BUSY;

 out_tgt_busy:
 return SCSI_MLQUEUE_TARGET_BUSY;

 out_fail_command_release_buf:
 lpfc_release_scsi_buf(phba, lpfc_cmd);

 out_fail_command:
 cmnd->scsi_done(cmnd);
 return 0;
}
