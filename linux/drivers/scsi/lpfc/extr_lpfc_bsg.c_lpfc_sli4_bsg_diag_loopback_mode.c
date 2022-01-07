
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int lnk_no; } ;
struct TYPE_9__ {int conf_trunk; TYPE_3__ lnk_info; } ;
struct lpfc_hba {scalar_t__ link_state; int hbalock; int link_flag; TYPE_5__* pport; TYPE_4__ sli4_hba; } ;
struct TYPE_6__ {scalar_t__ vendor_cmd; } ;
struct TYPE_7__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct diag_mode_set {int type; int timeout; int physical_link; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct TYPE_10__ {int fc_myDID; } ;


 int DISABLE_LOOP_BACK ;
 int EINVAL ;
 int ELNRNG ;
 int EPERM ;
 int ETIMEDOUT ;


 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int LPFC_DIAG_LOOPBACK_TYPE_DISABLE ;
 int LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED ;
 int LPFC_DIAG_LOOPBACK_TYPE_INTERNAL ;
 int LPFC_DIAG_LOOPBACK_TYPE_SERDES ;
 scalar_t__ LPFC_HBA_READY ;
 scalar_t__ LPFC_LINK_DOWN ;
 scalar_t__ LPFC_LINK_UP ;
 int LS_LOOPBACK_MODE ;
 int bsg_job_done (struct bsg_job*,int,scalar_t__) ;
 int lpfc_bsg_diag_mode_enter (struct lpfc_hba*) ;
 int lpfc_bsg_diag_mode_exit (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_selective_reset (struct lpfc_hba*) ;
 int lpfc_sli4_bsg_set_link_diag_state (struct lpfc_hba*,int) ;
 int lpfc_sli4_bsg_set_loopback_mode (struct lpfc_hba*,int ,int) ;
 int lpfc_sli4_diag_fcport_reg_setup (struct lpfc_hba*) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
lpfc_sli4_bsg_diag_loopback_mode(struct lpfc_hba *phba, struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct diag_mode_set *loopback_mode;
 uint32_t link_flags, timeout, link_no;
 int i, rc = 0;


 bsg_reply->reply_payload_rcv_len = 0;

 if (job->request_len < sizeof(struct fc_bsg_request) +
     sizeof(struct diag_mode_set)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "3011 Received DIAG MODE request size:%d "
    "below the minimum size:%d\n",
    job->request_len,
    (int)(sizeof(struct fc_bsg_request) +
    sizeof(struct diag_mode_set)));
  rc = -EINVAL;
  goto job_done;
 }

 loopback_mode = (struct diag_mode_set *)
  bsg_request->rqst_data.h_vendor.vendor_cmd;
 link_flags = loopback_mode->type;
 timeout = loopback_mode->timeout * 100;

 if (loopback_mode->physical_link == -1)
  link_no = phba->sli4_hba.lnk_info.lnk_no;
 else
  link_no = loopback_mode->physical_link;

 if (link_flags == DISABLE_LOOP_BACK) {
  rc = lpfc_sli4_bsg_set_loopback_mode(phba,
     LPFC_DIAG_LOOPBACK_TYPE_DISABLE,
     link_no);
  if (!rc) {

   phba->sli4_hba.conf_trunk &= ~((1 << link_no) << 4);
  }
  goto job_done;
 } else {

  if (phba->sli4_hba.conf_trunk & ((1 << link_no) << 4)) {
   rc = -EPERM;
   goto job_done;
  }
 }

 rc = lpfc_bsg_diag_mode_enter(phba);
 if (rc)
  goto job_done;


 spin_lock_irq(&phba->hbalock);
 phba->link_flag |= LS_LOOPBACK_MODE;
 spin_unlock_irq(&phba->hbalock);


 rc = lpfc_selective_reset(phba);
 if (rc)
  goto job_done;


 lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
   "3129 Bring link to diagnostic state.\n");

 rc = lpfc_sli4_bsg_set_link_diag_state(phba, 1);
 if (rc) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "3130 Failed to bring link to diagnostic "
    "state, rc:x%x\n", rc);
  goto loopback_mode_exit;
 }


 i = 0;
 while (phba->link_state != LPFC_LINK_DOWN) {
  if (i++ > timeout) {
   rc = -ETIMEDOUT;
   lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
     "3131 Timeout waiting for link to "
     "diagnostic mode, timeout:%d ms\n",
     timeout * 10);
   goto loopback_mode_exit;
  }
  msleep(10);
 }


 lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
   "3132 Set up loopback mode:x%x\n", link_flags);

 switch (link_flags) {
 case 128:
  if (phba->sli4_hba.conf_trunk & (1 << link_no)) {
   rc = lpfc_sli4_bsg_set_loopback_mode(phba,
     LPFC_DIAG_LOOPBACK_TYPE_INTERNAL,
     link_no);
  } else {

   if (phba->sli4_hba.conf_trunk) {
    rc = -ELNRNG;
    goto loopback_mode_exit;
   }

   rc = lpfc_sli4_bsg_set_loopback_mode(phba,
     LPFC_DIAG_LOOPBACK_TYPE_INTERNAL,
     link_no);
  }

  if (!rc) {

   phba->sli4_hba.conf_trunk |= (1 << link_no) << 4;
  }

  break;
 case 129:
  if (phba->sli4_hba.conf_trunk & (1 << link_no)) {
   rc = lpfc_sli4_bsg_set_loopback_mode(phba,
    LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED,
    link_no);
  } else {

   if (phba->sli4_hba.conf_trunk) {
    rc = -ELNRNG;
    goto loopback_mode_exit;
   }

   rc = lpfc_sli4_bsg_set_loopback_mode(phba,
      LPFC_DIAG_LOOPBACK_TYPE_SERDES,
      link_no);
  }

  if (!rc) {

   phba->sli4_hba.conf_trunk |= (1 << link_no) << 4;
  }

  break;
 default:
  rc = -EINVAL;
  lpfc_printf_log(phba, KERN_ERR, LOG_LIBDFC,
    "3141 Loopback mode:x%x not supported\n",
    link_flags);
  goto loopback_mode_exit;
 }

 if (!rc) {

  msleep(100);
  i = 0;
  while (phba->link_state < LPFC_LINK_UP) {
   if (i++ > timeout) {
    rc = -ETIMEDOUT;
    lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
     "3137 Timeout waiting for link up "
     "in loopback mode, timeout:%d ms\n",
     timeout * 10);
    break;
   }
   msleep(10);
  }
 }


 if (!rc) {

  phba->pport->fc_myDID = 1;
  rc = lpfc_sli4_diag_fcport_reg_setup(phba);
 } else
  goto loopback_mode_exit;

 if (!rc) {

  msleep(100);
  i = 0;
  while (phba->link_state != LPFC_HBA_READY) {
   if (i++ > timeout) {
    rc = -ETIMEDOUT;
    lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
     "3133 Timeout waiting for port "
     "loopback mode ready, timeout:%d ms\n",
     timeout * 10);
    break;
   }
   msleep(10);
  }
 }

loopback_mode_exit:

 if (rc) {
  spin_lock_irq(&phba->hbalock);
  phba->link_flag &= ~LS_LOOPBACK_MODE;
  spin_unlock_irq(&phba->hbalock);
 }
 lpfc_bsg_diag_mode_exit(phba);

job_done:

 bsg_reply->result = rc;

 if (rc == 0)
  bsg_job_done(job, bsg_reply->result,
          bsg_reply->reply_payload_rcv_len);
 return rc;
}
