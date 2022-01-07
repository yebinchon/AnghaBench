
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


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct scsi_cmnd {int sc_data_direction; scalar_t__ cmd_len; int cmnd; TYPE_2__* device; } ;
struct lpfc_vport {scalar_t__ cfg_first_burst_size; struct lpfc_hba* phba; } ;
struct TYPE_14__ {int control_requests; int input_requests; int output_requests; } ;
struct lpfc_sli4_hdw_queue {TYPE_5__ scsi_cstat; } ;
struct lpfc_nodelist {int nlp_flag; size_t nlp_rpi; int nlp_fcp_info; } ;
struct TYPE_15__ {int icd; } ;
struct TYPE_16__ {TYPE_6__ fcp_ext; } ;
struct TYPE_12__ {scalar_t__ fcpi_XRdy; scalar_t__ fcpi_parm; } ;
struct TYPE_13__ {TYPE_3__ fcpi; } ;
struct TYPE_18__ {size_t ulpContext; int ulpFCP2Rcvy; int ulpClass; int ulpTimeout; TYPE_7__ unsli3; void* ulpPU; TYPE_4__ un; int ulpCommand; } ;
struct lpfc_iocbq {struct lpfc_vport* vport; TYPE_9__ iocb; int iocb_cmpl; struct lpfc_io_buf* context1; } ;
struct lpfc_io_buf {int hdwq_no; int timeout; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; TYPE_1__* fcp_rsp; struct lpfc_iocbq cur_iocbq; } ;
struct TYPE_17__ {size_t* rpi_ids; struct lpfc_sli4_hdw_queue* hdwq; } ;
struct lpfc_hba {int sli_rev; int sli3_options; TYPE_8__ sli4_hba; } ;
struct fcp_cmnd {scalar_t__ fcpCntl3; int fcpCntl1; int * fcpCdb; int fcp_lun; scalar_t__ fcpCntl2; } ;
struct TYPE_11__ {int lun; } ;
struct TYPE_10__ {scalar_t__ rspSnsLen; } ;
typedef TYPE_9__ IOCB_t ;


 int CMD_FCP_ICMND64_CR ;
 int CMD_FCP_IREAD64_CR ;
 int CMD_FCP_IWRITE64_CR ;
 int DMA_TO_DEVICE ;
 scalar_t__ LPFC_FCP_CDB_LEN ;
 int LPFC_SLI3_BG_ENABLED ;
 int LPFC_SLI_REV4 ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int NLP_FCP_2_DEVICE ;
 int NLP_FIRSTBURST ;
 void* PARM_READ_CHECK ;
 scalar_t__ READ_DATA ;
 int SIMPLE_Q ;
 scalar_t__ WRITE_DATA ;
 int int_to_scsilun (int ,int *) ;
 int lpfc_fcpcmd_to_iocb (int ,struct fcp_cmnd*) ;
 int lpfc_scsi_cmd_iocb_cmpl ;
 int memcpy (int *,int ,scalar_t__) ;
 int memset (int *,int ,scalar_t__) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void
lpfc_scsi_prep_cmnd(struct lpfc_vport *vport, struct lpfc_io_buf *lpfc_cmd,
      struct lpfc_nodelist *pnode)
{
 struct lpfc_hba *phba = vport->phba;
 struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
 struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
 IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
 struct lpfc_iocbq *piocbq = &(lpfc_cmd->cur_iocbq);
 struct lpfc_sli4_hdw_queue *hdwq = ((void*)0);
 int datadir = scsi_cmnd->sc_data_direction;
 int idx;
 uint8_t *ptr;
 bool sli4;
 uint32_t fcpdl;

 if (!pnode || !NLP_CHK_NODE_ACT(pnode))
  return;

 lpfc_cmd->fcp_rsp->rspSnsLen = 0;

 lpfc_cmd->fcp_cmnd->fcpCntl2 = 0;

 int_to_scsilun(lpfc_cmd->pCmd->device->lun,
   &lpfc_cmd->fcp_cmnd->fcp_lun);

 ptr = &fcp_cmnd->fcpCdb[0];
 memcpy(ptr, scsi_cmnd->cmnd, scsi_cmnd->cmd_len);
 if (scsi_cmnd->cmd_len < LPFC_FCP_CDB_LEN) {
  ptr += scsi_cmnd->cmd_len;
  memset(ptr, 0, (LPFC_FCP_CDB_LEN - scsi_cmnd->cmd_len));
 }

 fcp_cmnd->fcpCntl1 = SIMPLE_Q;

 sli4 = (phba->sli_rev == LPFC_SLI_REV4);
 piocbq->iocb.un.fcpi.fcpi_XRdy = 0;
 idx = lpfc_cmd->hdwq_no;
 if (phba->sli4_hba.hdwq)
  hdwq = &phba->sli4_hba.hdwq[idx];







 if (scsi_sg_count(scsi_cmnd)) {
  if (datadir == DMA_TO_DEVICE) {
   iocb_cmd->ulpCommand = CMD_FCP_IWRITE64_CR;
   iocb_cmd->ulpPU = PARM_READ_CHECK;
   if (vport->cfg_first_burst_size &&
       (pnode->nlp_flag & NLP_FIRSTBURST)) {
    fcpdl = scsi_bufflen(scsi_cmnd);
    if (fcpdl < vport->cfg_first_burst_size)
     piocbq->iocb.un.fcpi.fcpi_XRdy = fcpdl;
    else
     piocbq->iocb.un.fcpi.fcpi_XRdy =
      vport->cfg_first_burst_size;
   }
   fcp_cmnd->fcpCntl3 = WRITE_DATA;
   if (hdwq)
    hdwq->scsi_cstat.output_requests++;
  } else {
   iocb_cmd->ulpCommand = CMD_FCP_IREAD64_CR;
   iocb_cmd->ulpPU = PARM_READ_CHECK;
   fcp_cmnd->fcpCntl3 = READ_DATA;
   if (hdwq)
    hdwq->scsi_cstat.input_requests++;
  }
 } else {
  iocb_cmd->ulpCommand = CMD_FCP_ICMND64_CR;
  iocb_cmd->un.fcpi.fcpi_parm = 0;
  iocb_cmd->ulpPU = 0;
  fcp_cmnd->fcpCntl3 = 0;
  if (hdwq)
   hdwq->scsi_cstat.control_requests++;
 }
 if (phba->sli_rev == 3 &&
     !(phba->sli3_options & LPFC_SLI3_BG_ENABLED))
  lpfc_fcpcmd_to_iocb(iocb_cmd->unsli3.fcp_ext.icd, fcp_cmnd);




 piocbq->iocb.ulpContext = pnode->nlp_rpi;
 if (sli4)
  piocbq->iocb.ulpContext =
    phba->sli4_hba.rpi_ids[pnode->nlp_rpi];
 if (pnode->nlp_fcp_info & NLP_FCP_2_DEVICE)
  piocbq->iocb.ulpFCP2Rcvy = 1;
 else
  piocbq->iocb.ulpFCP2Rcvy = 0;

 piocbq->iocb.ulpClass = (pnode->nlp_fcp_info & 0x0f);
 piocbq->context1 = lpfc_cmd;
 piocbq->iocb_cmpl = lpfc_scsi_cmd_iocb_cmpl;
 piocbq->iocb.ulpTimeout = lpfc_cmd->timeout;
 piocbq->vport = vport;
}
