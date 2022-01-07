
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* vendor_cmd; } ;
struct TYPE_4__ {TYPE_1__ h_vendor; } ;
struct fc_bsg_request {TYPE_2__ rqst_data; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;


 int EINVAL ;
 int lpfc_bsg_diag_loopback_mode (struct bsg_job*) ;
 int lpfc_bsg_diag_loopback_run (struct bsg_job*) ;
 int lpfc_bsg_get_dfc_rev (struct bsg_job*) ;
 int lpfc_bsg_get_ras_config (struct bsg_job*) ;
 int lpfc_bsg_get_ras_fwlog (struct bsg_job*) ;
 int lpfc_bsg_get_ras_lwpd (struct bsg_job*) ;
 int lpfc_bsg_hba_get_event (struct bsg_job*) ;
 int lpfc_bsg_hba_set_event (struct bsg_job*) ;
 int lpfc_bsg_mbox_cmd (struct bsg_job*) ;
 int lpfc_bsg_send_mgmt_rsp (struct bsg_job*) ;
 int lpfc_bsg_set_ras_config (struct bsg_job*) ;
 int lpfc_forced_link_speed (struct bsg_job*) ;
 int lpfc_get_trunk_info (struct bsg_job*) ;
 int lpfc_menlo_cmd (struct bsg_job*) ;
 int lpfc_sli4_bsg_diag_mode_end (struct bsg_job*) ;
 int lpfc_sli4_bsg_link_diag_test (struct bsg_job*) ;

__attribute__((used)) static int
lpfc_bsg_hst_vendor(struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 int command = bsg_request->rqst_data.h_vendor.vendor_cmd[0];
 int rc;

 switch (command) {
 case 128:
  rc = lpfc_bsg_hba_set_event(job);
  break;
 case 140:
  rc = lpfc_bsg_hba_get_event(job);
  break;
 case 129:
  rc = lpfc_bsg_send_mgmt_rsp(job);
  break;
 case 144:
  rc = lpfc_bsg_diag_loopback_mode(job);
  break;
 case 143:
  rc = lpfc_sli4_bsg_diag_mode_end(job);
  break;
 case 142:
  rc = lpfc_bsg_diag_loopback_run(job);
  break;
 case 137:
  rc = lpfc_sli4_bsg_link_diag_test(job);
  break;
 case 139:
  rc = lpfc_bsg_get_dfc_rev(job);
  break;
 case 136:
  rc = lpfc_bsg_mbox_cmd(job);
  break;
 case 135:
 case 134:
  rc = lpfc_menlo_cmd(job);
  break;
 case 141:
  rc = lpfc_forced_link_speed(job);
  break;
 case 131:
  rc = lpfc_bsg_get_ras_lwpd(job);
  break;
 case 132:
  rc = lpfc_bsg_get_ras_fwlog(job);
  break;
 case 133:
  rc = lpfc_bsg_get_ras_config(job);
  break;
 case 130:
  rc = lpfc_bsg_set_ras_config(job);
  break;
 case 138:
  rc = lpfc_get_trunk_info(job);
  break;
 default:
  rc = -EINVAL;
  bsg_reply->reply_payload_rcv_len = 0;

  bsg_reply->result = rc;
  break;
 }

 return rc;
}
