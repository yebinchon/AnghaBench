
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct scsi_cmnd {int device; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_rpi; } ;
struct TYPE_3__ {int * ulpWord; } ;
struct TYPE_4__ {scalar_t__ ulpStatus; TYPE_1__ un; } ;
struct lpfc_iocbq {TYPE_2__ iocb; int iocb_flag; int sli4_xritag; int iocb_cmpl; } ;
struct lpfc_io_buf {int timeout; struct lpfc_iocbq cur_iocbq; struct lpfc_nodelist* ndlp; struct scsi_cmnd* pCmd; struct lpfc_rport_data* rdata; } ;
struct lpfc_hba {int cfg_task_mgmt_tmo; } ;


 int FAILED ;
 int IOCB_SUCCESS ;
 int IOCB_TIMEDOUT ;
 scalar_t__ IOSTAT_FCP_RSP_ERROR ;
 scalar_t__ IOSTAT_SUCCESS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_FCP ;
 int LPFC_FCP_RING ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int SUCCESS ;
 int TIMEOUT_ERROR ;
 int lpfc_check_fcp_rsp (struct lpfc_vport*,struct lpfc_io_buf*) ;
 struct lpfc_io_buf* lpfc_get_scsi_buf (struct lpfc_hba*,struct lpfc_nodelist*,int *) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int ,unsigned int,int ,scalar_t__,int ,int ,...) ;
 int lpfc_release_scsi_buf (struct lpfc_hba*,struct lpfc_io_buf*) ;
 struct lpfc_rport_data* lpfc_rport_data_from_scsi_device (int ) ;
 int lpfc_scsi_prep_task_mgmt_cmd (struct lpfc_vport*,struct lpfc_io_buf*,int ,int ) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb_wait (struct lpfc_hba*,int ,struct lpfc_iocbq*,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int lpfc_taskmgmt_name (int ) ;
 int lpfc_tskmgmt_def_cmpl ;

__attribute__((used)) static int
lpfc_send_taskmgmt(struct lpfc_vport *vport, struct scsi_cmnd *cmnd,
     unsigned int tgt_id, uint64_t lun_id,
     uint8_t task_mgmt_cmd)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_io_buf *lpfc_cmd;
 struct lpfc_iocbq *iocbq;
 struct lpfc_iocbq *iocbqrsp;
 struct lpfc_rport_data *rdata;
 struct lpfc_nodelist *pnode;
 int ret;
 int status;

 rdata = lpfc_rport_data_from_scsi_device(cmnd->device);
 if (!rdata || !rdata->pnode || !NLP_CHK_NODE_ACT(rdata->pnode))
  return FAILED;
 pnode = rdata->pnode;

 lpfc_cmd = lpfc_get_scsi_buf(phba, pnode, ((void*)0));
 if (lpfc_cmd == ((void*)0))
  return FAILED;
 lpfc_cmd->timeout = phba->cfg_task_mgmt_tmo;
 lpfc_cmd->rdata = rdata;
 lpfc_cmd->pCmd = cmnd;
 lpfc_cmd->ndlp = pnode;

 status = lpfc_scsi_prep_task_mgmt_cmd(vport, lpfc_cmd, lun_id,
        task_mgmt_cmd);
 if (!status) {
  lpfc_release_scsi_buf(phba, lpfc_cmd);
  return FAILED;
 }

 iocbq = &lpfc_cmd->cur_iocbq;
 iocbqrsp = lpfc_sli_get_iocbq(phba);
 if (iocbqrsp == ((void*)0)) {
  lpfc_release_scsi_buf(phba, lpfc_cmd);
  return FAILED;
 }
 iocbq->iocb_cmpl = lpfc_tskmgmt_def_cmpl;

 lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
    "0702 Issue %s to TGT %d LUN %llu "
    "rpi x%x nlp_flag x%x Data: x%x x%x\n",
    lpfc_taskmgmt_name(task_mgmt_cmd), tgt_id, lun_id,
    pnode->nlp_rpi, pnode->nlp_flag, iocbq->sli4_xritag,
    iocbq->iocb_flag);

 status = lpfc_sli_issue_iocb_wait(phba, LPFC_FCP_RING,
       iocbq, iocbqrsp, lpfc_cmd->timeout);
 if ((status != IOCB_SUCCESS) ||
     (iocbqrsp->iocb.ulpStatus != IOSTAT_SUCCESS)) {
  if (status != IOCB_SUCCESS ||
      iocbqrsp->iocb.ulpStatus != IOSTAT_FCP_RSP_ERROR)
   lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
      "0727 TMF %s to TGT %d LUN %llu "
      "failed (%d, %d) iocb_flag x%x\n",
      lpfc_taskmgmt_name(task_mgmt_cmd),
      tgt_id, lun_id,
      iocbqrsp->iocb.ulpStatus,
      iocbqrsp->iocb.un.ulpWord[4],
      iocbq->iocb_flag);

  if (status == IOCB_SUCCESS) {
   if (iocbqrsp->iocb.ulpStatus == IOSTAT_FCP_RSP_ERROR)


    ret = lpfc_check_fcp_rsp(vport, lpfc_cmd);
   else
    ret = FAILED;
  } else if (status == IOCB_TIMEDOUT) {
   ret = TIMEOUT_ERROR;
  } else {
   ret = FAILED;
  }
 } else
  ret = SUCCESS;

 lpfc_sli_release_iocbq(phba, iocbqrsp);

 if (ret != TIMEOUT_ERROR)
  lpfc_release_scsi_buf(phba, lpfc_cmd);

 return ret;
}
