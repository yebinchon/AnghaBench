
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int hba_flag; } ;
struct get_forced_link_speed_support {int dummy; } ;
struct forced_link_speed_support_reply {int supported; } ;
struct fc_bsg_request {int dummy; } ;
struct TYPE_3__ {scalar_t__ vendor_rsp; } ;
struct TYPE_4__ {TYPE_1__ vendor_reply; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; TYPE_2__ reply_data; } ;
struct bsg_job {int request_len; int reply_len; struct fc_bsg_reply* reply; } ;
struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int HBA_FORCED_LINK_SPEED ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED ;
 int LPFC_FORCED_LINK_SPEED_SUPPORTED ;
 int bsg_job_done (struct bsg_job*,int,int ) ;
 struct Scsi_Host* fc_bsg_to_shost (struct bsg_job*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 struct lpfc_vport* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int
lpfc_forced_link_speed(struct bsg_job *job)
{
 struct Scsi_Host *shost = fc_bsg_to_shost(job);
 struct lpfc_vport *vport = shost_priv(shost);
 struct lpfc_hba *phba = vport->phba;
 struct fc_bsg_reply *bsg_reply = job->reply;
 struct forced_link_speed_support_reply *forced_reply;
 int rc = 0;

 if (job->request_len <
     sizeof(struct fc_bsg_request) +
     sizeof(struct get_forced_link_speed_support)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "0048 Received FORCED_LINK_SPEED request "
    "below minimum size\n");
  rc = -EINVAL;
  goto job_error;
 }

 forced_reply = (struct forced_link_speed_support_reply *)
  bsg_reply->reply_data.vendor_reply.vendor_rsp;

 if (job->reply_len <
     sizeof(struct fc_bsg_request) +
     sizeof(struct forced_link_speed_support_reply)) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "0049 Received FORCED_LINK_SPEED reply below "
    "minimum size\n");
  rc = -EINVAL;
  goto job_error;
 }

 forced_reply->supported = (phba->hba_flag & HBA_FORCED_LINK_SPEED)
       ? LPFC_FORCED_LINK_SPEED_SUPPORTED
       : LPFC_FORCED_LINK_SPEED_NOT_SUPPORTED;
job_error:
 bsg_reply->result = rc;
 if (rc == 0)
  bsg_job_done(job, bsg_reply->result,
          bsg_reply->reply_payload_rcv_len);
 return rc;
}
