
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


typedef scalar_t__ uint32_t ;
struct scsi_cmnd {scalar_t__ result; scalar_t__* cmnd; int* sense_buffer; scalar_t__ sc_data_direction; TYPE_9__* device; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct TYPE_16__ {scalar_t__ fcpi_parm; } ;
struct TYPE_17__ {TYPE_1__ fcpi; } ;
struct TYPE_18__ {TYPE_2__ un; } ;
struct lpfc_iocbq {TYPE_3__ iocb; } ;
struct lpfc_io_buf {TYPE_4__* rdata; struct fcp_rsp* fcp_rsp; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int hbalock; int work_list; } ;
struct TYPE_15__ {int evt_listp; } ;
struct TYPE_23__ {int wwnn; int wwpn; int subcategory; int event_type; } ;
struct TYPE_13__ {scalar_t__ opcode; scalar_t__ fcpiparam; int lun; TYPE_8__ header; } ;
struct TYPE_21__ {int wwnn; int wwpn; int lun; int subcategory; void* event_type; } ;
struct TYPE_22__ {int sense_key; int asc; int ascq; TYPE_6__ scsi_event; } ;
struct TYPE_20__ {int wwnn; int wwpn; int lun; int subcategory; void* event_type; } ;
struct TYPE_14__ {TYPE_10__ read_check_error; TYPE_7__ check_cond_evt; TYPE_5__ scsi_evt; } ;
struct lpfc_fast_path_event {TYPE_12__ work_evt; struct lpfc_vport* vport; TYPE_11__ un; } ;
struct fcp_rsp {scalar_t__ rspStatus2; scalar_t__ rspStatus3; int rspResId; scalar_t__ rspSnsLen; } ;
struct TYPE_24__ {int lun; } ;
struct TYPE_19__ {struct lpfc_nodelist* pnode; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 int FC_REG_FABRIC_EVENT ;
 void* FC_REG_SCSI_EVENT ;
 int LPFC_EVENT_CHECK_COND ;
 int LPFC_EVENT_DEVBSY ;
 int LPFC_EVENT_FCPRDCHKERR ;
 int LPFC_EVENT_QFULL ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ READ_10 ;
 scalar_t__ RESID_OVER ;
 scalar_t__ RESID_UNDER ;
 scalar_t__ SAM_STAT_BUSY ;
 scalar_t__ SAM_STAT_GOOD ;
 scalar_t__ SAM_STAT_TASK_SET_FULL ;
 scalar_t__ SNS_LEN_VALID ;
 scalar_t__ WRITE_10 ;
 scalar_t__ be32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 struct lpfc_fast_path_event* lpfc_alloc_fast_evt (struct lpfc_hba*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_send_scsi_error_event(struct lpfc_hba *phba, struct lpfc_vport *vport,
  struct lpfc_io_buf *lpfc_cmd, struct lpfc_iocbq *rsp_iocb) {
 struct scsi_cmnd *cmnd = lpfc_cmd->pCmd;
 struct fcp_rsp *fcprsp = lpfc_cmd->fcp_rsp;
 uint32_t resp_info = fcprsp->rspStatus2;
 uint32_t scsi_status = fcprsp->rspStatus3;
 uint32_t fcpi_parm = rsp_iocb->iocb.un.fcpi.fcpi_parm;
 struct lpfc_fast_path_event *fast_path_evt = ((void*)0);
 struct lpfc_nodelist *pnode = lpfc_cmd->rdata->pnode;
 unsigned long flags;

 if (!pnode || !NLP_CHK_NODE_ACT(pnode))
  return;


 if ((cmnd->result == SAM_STAT_TASK_SET_FULL) ||
  (cmnd->result == SAM_STAT_BUSY)) {
  fast_path_evt = lpfc_alloc_fast_evt(phba);
  if (!fast_path_evt)
   return;
  fast_path_evt->un.scsi_evt.event_type =
   FC_REG_SCSI_EVENT;
  fast_path_evt->un.scsi_evt.subcategory =
  (cmnd->result == SAM_STAT_TASK_SET_FULL) ?
  LPFC_EVENT_QFULL : LPFC_EVENT_DEVBSY;
  fast_path_evt->un.scsi_evt.lun = cmnd->device->lun;
  memcpy(&fast_path_evt->un.scsi_evt.wwpn,
   &pnode->nlp_portname, sizeof(struct lpfc_name));
  memcpy(&fast_path_evt->un.scsi_evt.wwnn,
   &pnode->nlp_nodename, sizeof(struct lpfc_name));
 } else if ((resp_info & SNS_LEN_VALID) && fcprsp->rspSnsLen &&
  ((cmnd->cmnd[0] == READ_10) || (cmnd->cmnd[0] == WRITE_10))) {
  fast_path_evt = lpfc_alloc_fast_evt(phba);
  if (!fast_path_evt)
   return;
  fast_path_evt->un.check_cond_evt.scsi_event.event_type =
   FC_REG_SCSI_EVENT;
  fast_path_evt->un.check_cond_evt.scsi_event.subcategory =
   LPFC_EVENT_CHECK_COND;
  fast_path_evt->un.check_cond_evt.scsi_event.lun =
   cmnd->device->lun;
  memcpy(&fast_path_evt->un.check_cond_evt.scsi_event.wwpn,
   &pnode->nlp_portname, sizeof(struct lpfc_name));
  memcpy(&fast_path_evt->un.check_cond_evt.scsi_event.wwnn,
   &pnode->nlp_nodename, sizeof(struct lpfc_name));
  fast_path_evt->un.check_cond_evt.sense_key =
   cmnd->sense_buffer[2] & 0xf;
  fast_path_evt->un.check_cond_evt.asc = cmnd->sense_buffer[12];
  fast_path_evt->un.check_cond_evt.ascq = cmnd->sense_buffer[13];
 } else if ((cmnd->sc_data_direction == DMA_FROM_DEVICE) &&
       fcpi_parm &&
       ((be32_to_cpu(fcprsp->rspResId) != fcpi_parm) ||
   ((scsi_status == SAM_STAT_GOOD) &&
   !(resp_info & (RESID_UNDER | RESID_OVER))))) {




  fast_path_evt = lpfc_alloc_fast_evt(phba);
  if (!fast_path_evt)
   return;
  fast_path_evt->un.read_check_error.header.event_type =
   FC_REG_FABRIC_EVENT;
  fast_path_evt->un.read_check_error.header.subcategory =
   LPFC_EVENT_FCPRDCHKERR;
  memcpy(&fast_path_evt->un.read_check_error.header.wwpn,
   &pnode->nlp_portname, sizeof(struct lpfc_name));
  memcpy(&fast_path_evt->un.read_check_error.header.wwnn,
   &pnode->nlp_nodename, sizeof(struct lpfc_name));
  fast_path_evt->un.read_check_error.lun = cmnd->device->lun;
  fast_path_evt->un.read_check_error.opcode = cmnd->cmnd[0];
  fast_path_evt->un.read_check_error.fcpiparam =
   fcpi_parm;
 } else
  return;

 fast_path_evt->vport = vport;
 spin_lock_irqsave(&phba->hbalock, flags);
 list_add_tail(&fast_path_evt->work_evt.evt_listp, &phba->work_list);
 spin_unlock_irqrestore(&phba->hbalock, flags);
 lpfc_worker_wake_up(phba);
 return;
}
