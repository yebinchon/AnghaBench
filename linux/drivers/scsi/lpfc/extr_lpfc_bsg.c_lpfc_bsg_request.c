
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fc_bsg_request {int msgcode; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;


 int EINVAL ;



 int lpfc_bsg_hst_vendor (struct bsg_job*) ;
 int lpfc_bsg_rport_els (struct bsg_job*) ;
 int lpfc_bsg_send_mgmt_cmd (struct bsg_job*) ;

int
lpfc_bsg_request(struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 uint32_t msgcode;
 int rc;

 msgcode = bsg_request->msgcode;
 switch (msgcode) {
 case 130:
  rc = lpfc_bsg_hst_vendor(job);
  break;
 case 128:
  rc = lpfc_bsg_rport_els(job);
  break;
 case 129:
  rc = lpfc_bsg_send_mgmt_cmd(job);
  break;
 default:
  rc = -EINVAL;
  bsg_reply->reply_payload_rcv_len = 0;

  bsg_reply->result = rc;
  break;
 }

 return rc;
}
