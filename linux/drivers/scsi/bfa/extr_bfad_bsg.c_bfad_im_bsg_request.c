
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fc_bsg_request {int msgcode; } ;
struct fc_bsg_reply {int result; int reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;


 int BFA_STATUS_OK ;
 int EINVAL ;





 int bfad_im_bsg_els_ct_request (struct bsg_job*) ;
 int bfad_im_bsg_vendor_request (struct bsg_job*) ;

int
bfad_im_bsg_request(struct bsg_job *job)
{
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 uint32_t rc = BFA_STATUS_OK;

 switch (bsg_request->msgcode) {
 case 130:

  rc = bfad_im_bsg_vendor_request(job);
  break;
 case 131:
 case 128:
 case 132:
 case 129:

  rc = bfad_im_bsg_els_ct_request(job);
  break;
 default:
  bsg_reply->result = rc = -EINVAL;
  bsg_reply->reply_payload_rcv_len = 0;
  break;
 }

 return rc;
}
