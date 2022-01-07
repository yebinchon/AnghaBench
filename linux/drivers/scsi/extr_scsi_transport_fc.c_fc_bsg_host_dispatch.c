
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_internal {TYPE_6__* f; } ;
struct TYPE_9__ {long vendor_id; } ;
struct TYPE_10__ {TYPE_3__ h_vendor; } ;
struct fc_bsg_request {int msgcode; TYPE_4__ rqst_data; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct fc_bsg_host_vendor {int dummy; } ;
struct fc_bsg_host_els {int dummy; } ;
struct fc_bsg_host_del_rport {int dummy; } ;
struct fc_bsg_host_ct {int dummy; } ;
struct fc_bsg_host_add_rport {int dummy; } ;
struct TYPE_8__ {int payload_len; } ;
struct TYPE_7__ {int payload_len; } ;
struct bsg_job {int request_len; int reply_len; TYPE_2__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {TYPE_5__* hostt; int transportt; } ;
struct TYPE_12__ {int (* bsg_request ) (struct bsg_job*) ;} ;
struct TYPE_11__ {long vendor_id; } ;


 int BUG_ON (int) ;
 int EBADR ;
 int EINVAL ;
 int ENOMSG ;
 int ESRCH ;





 int bsg_job_done (struct bsg_job*,int,scalar_t__) ;
 int stub1 (struct bsg_job*) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static int fc_bsg_host_dispatch(struct Scsi_Host *shost, struct bsg_job *job)
{
 struct fc_internal *i = to_fc_internal(shost->transportt);
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 int cmdlen = sizeof(uint32_t);
 int ret;


 if (job->request_len < cmdlen) {
  ret = -ENOMSG;
  goto fail_host_msg;
 }


 switch (bsg_request->msgcode) {
 case 132:
  cmdlen += sizeof(struct fc_bsg_host_add_rport);
  break;

 case 130:
  cmdlen += sizeof(struct fc_bsg_host_del_rport);
  break;

 case 129:
  cmdlen += sizeof(struct fc_bsg_host_els);

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_host_msg;
  }
  break;

 case 131:
  cmdlen += sizeof(struct fc_bsg_host_ct);

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_host_msg;
  }
  break;

 case 128:
  cmdlen += sizeof(struct fc_bsg_host_vendor);
  if ((shost->hostt->vendor_id == 0L) ||
      (bsg_request->rqst_data.h_vendor.vendor_id !=
   shost->hostt->vendor_id)) {
   ret = -ESRCH;
   goto fail_host_msg;
  }
  break;

 default:
  ret = -EBADR;
  goto fail_host_msg;
 }

 ret = i->f->bsg_request(job);
 if (!ret)
  return 0;

fail_host_msg:

 BUG_ON(job->reply_len < sizeof(uint32_t));
 bsg_reply->reply_payload_rcv_len = 0;
 bsg_reply->result = ret;
 job->reply_len = sizeof(uint32_t);
 bsg_job_done(job, bsg_reply->result,
         bsg_reply->reply_payload_rcv_len);
 return 0;
}
