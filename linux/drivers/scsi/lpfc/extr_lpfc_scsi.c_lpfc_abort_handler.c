
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; scalar_t__ host_scribble; } ;
struct lpfc_vport {int cfg_devloss_tmo; struct lpfc_hba* phba; } ;
struct lpfc_sli_ring {size_t ringno; int ring_lock; } ;
struct TYPE_14__ {int abortIoTag; int abortContextTag; int abortType; } ;
struct TYPE_15__ {TYPE_6__ acxri; } ;
struct TYPE_16__ {int ulpLe; int ulpCommand; int ulpClass; int ulpIoTag; TYPE_7__ un; int ulpContext; } ;
struct lpfc_iocbq {size_t hba_wqidx; int iocb_flag; int sli4_xritag; struct lpfc_vport* vport; int iocb_cmpl; TYPE_8__ iocb; struct lpfc_io_buf* context1; } ;
struct lpfc_io_buf {int buf_lock; int * waitq; struct scsi_cmnd* pCmd; struct lpfc_iocbq cur_iocbq; } ;
struct TYPE_9__ {int * sli3_ring; } ;
struct TYPE_13__ {TYPE_4__* hdwq; } ;
struct lpfc_hba {int hba_flag; scalar_t__ sli_rev; int cfg_poll; int hbalock; TYPE_1__ sli; TYPE_5__ sli4_hba; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_12__ {TYPE_3__* io_wq; } ;
struct TYPE_11__ {struct lpfc_sli_ring* pring; } ;
struct TYPE_10__ {int lun; int id; struct Scsi_Host* host; } ;
typedef TYPE_8__ IOCB_t ;


 int ABORT_TYPE_ABTS ;
 int BUG_ON (int) ;
 int CMD_ABORT_XRI_CN ;
 int CMD_CLOSE_XRI_CN ;
 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int DISABLE_FCP_RING_INT ;
 int FAILED ;
 int HA_R0RE_REQ ;
 int HBA_IOQ_FLUSH ;
 int IOCB_ERROR ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LOG_FCP ;
 int LPFC_DRIVER_ABORTED ;
 size_t LPFC_FCP_RING ;
 int LPFC_IO_FOF ;
 int LPFC_IO_ON_TXCMPLQ ;
 scalar_t__ LPFC_SLI_REV4 ;
 int LPFC_USE_FCPWQIDX ;
 int SUCCESS ;
 struct lpfc_iocbq* __lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int __lpfc_sli_issue_iocb (struct lpfc_hba*,size_t,struct lpfc_iocbq*,int ) ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 scalar_t__ lpfc_is_link_up (struct lpfc_hba*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_sli_abort_fcp_cmpl ;
 int lpfc_sli_handle_fast_ring_event (struct lpfc_hba*,int *,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int msecs_to_jiffies (int) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_timeout (int ,int,int ) ;
 int waitq ;

__attribute__((used)) static int
lpfc_abort_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_iocbq *iocb;
 struct lpfc_iocbq *abtsiocb;
 struct lpfc_io_buf *lpfc_cmd;
 IOCB_t *cmd, *icmd;
 int ret = SUCCESS, status = 0;
 struct lpfc_sli_ring *pring_s4 = ((void*)0);
 int ret_val;
 unsigned long flags;
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(waitq);

 status = fc_block_scsi_eh(cmnd);
 if (status != 0 && status != SUCCESS)
  return status;

 lpfc_cmd = (struct lpfc_io_buf *)cmnd->host_scribble;
 if (!lpfc_cmd)
  return ret;

 spin_lock_irqsave(&phba->hbalock, flags);

 if (phba->hba_flag & HBA_IOQ_FLUSH) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
   "3168 SCSI Layer abort requested I/O has been "
   "flushed by LLD.\n");
  ret = FAILED;
  goto out_unlock;
 }


 spin_lock(&lpfc_cmd->buf_lock);

 if (!lpfc_cmd->pCmd) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
    "2873 SCSI Layer I/O Abort Request IO CMPL Status "
    "x%x ID %d LUN %llu\n",
    SUCCESS, cmnd->device->id, cmnd->device->lun);
  goto out_unlock_buf;
 }

 iocb = &lpfc_cmd->cur_iocbq;
 if (phba->sli_rev == LPFC_SLI_REV4) {
  pring_s4 = phba->sli4_hba.hdwq[iocb->hba_wqidx].io_wq->pring;
  if (!pring_s4) {
   ret = FAILED;
   goto out_unlock_buf;
  }
  spin_lock(&pring_s4->ring_lock);
 }

 if (!(iocb->iocb_flag & LPFC_IO_ON_TXCMPLQ)) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
   "3169 SCSI Layer abort requested I/O has been "
   "cancelled by LLD.\n");
  ret = FAILED;
  goto out_unlock_ring;
 }






 if (lpfc_cmd->pCmd != cmnd) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
   "3170 SCSI Layer abort requested I/O has been "
   "completed by LLD.\n");
  goto out_unlock_ring;
 }

 BUG_ON(iocb->context1 != lpfc_cmd);


 if (iocb->iocb_flag & LPFC_DRIVER_ABORTED) {
  lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
    "3389 SCSI Layer I/O Abort Request is pending\n");
  if (phba->sli_rev == LPFC_SLI_REV4)
   spin_unlock(&pring_s4->ring_lock);
  spin_unlock(&lpfc_cmd->buf_lock);
  spin_unlock_irqrestore(&phba->hbalock, flags);
  goto wait_for_cmpl;
 }

 abtsiocb = __lpfc_sli_get_iocbq(phba);
 if (abtsiocb == ((void*)0)) {
  ret = FAILED;
  goto out_unlock_ring;
 }


 iocb->iocb_flag |= LPFC_DRIVER_ABORTED;







 cmd = &iocb->iocb;
 icmd = &abtsiocb->iocb;
 icmd->un.acxri.abortType = ABORT_TYPE_ABTS;
 icmd->un.acxri.abortContextTag = cmd->ulpContext;
 if (phba->sli_rev == LPFC_SLI_REV4)
  icmd->un.acxri.abortIoTag = iocb->sli4_xritag;
 else
  icmd->un.acxri.abortIoTag = cmd->ulpIoTag;

 icmd->ulpLe = 1;
 icmd->ulpClass = cmd->ulpClass;


 abtsiocb->hba_wqidx = iocb->hba_wqidx;
 abtsiocb->iocb_flag |= LPFC_USE_FCPWQIDX;
 if (iocb->iocb_flag & LPFC_IO_FOF)
  abtsiocb->iocb_flag |= LPFC_IO_FOF;

 if (lpfc_is_link_up(phba))
  icmd->ulpCommand = CMD_ABORT_XRI_CN;
 else
  icmd->ulpCommand = CMD_CLOSE_XRI_CN;

 abtsiocb->iocb_cmpl = lpfc_sli_abort_fcp_cmpl;
 abtsiocb->vport = vport;
 lpfc_cmd->waitq = &waitq;
 if (phba->sli_rev == LPFC_SLI_REV4) {

  ret_val = __lpfc_sli_issue_iocb(phba, pring_s4->ringno,
      abtsiocb, 0);
  spin_unlock(&pring_s4->ring_lock);
 } else {
  ret_val = __lpfc_sli_issue_iocb(phba, LPFC_FCP_RING,
      abtsiocb, 0);
 }

 spin_unlock_irqrestore(&phba->hbalock, flags);

 if (ret_val == IOCB_ERROR) {

  iocb->iocb_flag &= ~LPFC_DRIVER_ABORTED;
  lpfc_cmd->waitq = ((void*)0);
  spin_unlock(&lpfc_cmd->buf_lock);
  lpfc_sli_release_iocbq(phba, abtsiocb);
  ret = FAILED;
  goto out;
 }

 spin_unlock(&lpfc_cmd->buf_lock);

 if (phba->cfg_poll & DISABLE_FCP_RING_INT)
  lpfc_sli_handle_fast_ring_event(phba,
   &phba->sli.sli3_ring[LPFC_FCP_RING], HA_R0RE_REQ);

wait_for_cmpl:

 wait_event_timeout(waitq,
     (lpfc_cmd->pCmd != cmnd),
      msecs_to_jiffies(2*vport->cfg_devloss_tmo*1000));

 spin_lock(&lpfc_cmd->buf_lock);

 if (lpfc_cmd->pCmd == cmnd) {
  ret = FAILED;
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
     "0748 abort handler timed out waiting "
     "for aborting I/O (xri:x%x) to complete: "
     "ret %#x, ID %d, LUN %llu\n",
     iocb->sli4_xritag, ret,
     cmnd->device->id, cmnd->device->lun);
 }

 lpfc_cmd->waitq = ((void*)0);

 spin_unlock(&lpfc_cmd->buf_lock);
 goto out;

out_unlock_ring:
 if (phba->sli_rev == LPFC_SLI_REV4)
  spin_unlock(&pring_s4->ring_lock);
out_unlock_buf:
 spin_unlock(&lpfc_cmd->buf_lock);
out_unlock:
 spin_unlock_irqrestore(&phba->hbalock, flags);
out:
 lpfc_printf_vlog(vport, KERN_WARNING, LOG_FCP,
    "0749 SCSI Layer I/O Abort Request Status x%x ID %d "
    "LUN %llu\n", ret, cmnd->device->id,
    cmnd->device->lun);
 return ret;
}
