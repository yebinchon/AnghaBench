
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_ras_fwlog {int ras_active; int fw_loglevel; } ;
struct lpfc_hba {int cfg_ras_fwlog_buffsize; struct lpfc_ras_fwlog ras_fwlog; } ;
struct lpfc_bsg_ras_req {int dummy; } ;
struct lpfc_bsg_get_ras_config_reply {int log_buff_sz; int log_level; int state; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ vendor_rsp; } ;
struct TYPE_4__ {TYPE_1__ vendor_reply; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; TYPE_2__ reply_data; } ;
struct bsg_job {int request_len; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int KERN_ERR ;
 int LOG_LIBDFC ;
 int LPFC_RASLOG_STATE_RUNNING ;
 int LPFC_RASLOG_STATE_STOPPED ;
 int bsg_job_done (struct bsg_job*,int,int ) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 int lpfc_check_fwlog_support (struct lpfc_hba*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct lpfc_vport* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_bsg_get_ras_config(struct bsg_job *job)
{
 struct Scsi_Host *shost = fc_bsg_to_shost(job);
 struct lpfc_vport *vport = shost_priv(shost);
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_bsg_get_ras_config_reply *ras_reply;
 struct lpfc_ras_fwlog *ras_fwlog = &phba->ras_fwlog;
 int rc = 0;

 if (job->request_len <
     sizeof(struct fc_bsg_request) +
     sizeof(struct lpfc_bsg_ras_req)) {
  lpfc_printf_log(phba, KERN_ERR, LOG_LIBDFC,
    "6192 FW_LOG request received "
    "below minimum size\n");
  rc = -EINVAL;
  goto ras_job_error;
 }


 rc = lpfc_check_fwlog_support(phba);
 if (rc)
  goto ras_job_error;

 ras_reply = (struct lpfc_bsg_get_ras_config_reply *)
  bsg_reply->reply_data.vendor_reply.vendor_rsp;


 if (ras_fwlog->ras_active == 1)
  ras_reply->state = LPFC_RASLOG_STATE_RUNNING;
 else
  ras_reply->state = LPFC_RASLOG_STATE_STOPPED;

 ras_reply->log_level = phba->ras_fwlog.fw_loglevel;
 ras_reply->log_buff_sz = phba->cfg_ras_fwlog_buffsize;

ras_job_error:

 bsg_reply->result = rc;


 if (!rc)
  bsg_job_done(job, bsg_reply->result,
        bsg_reply->reply_payload_rcv_len);
 return rc;
}
