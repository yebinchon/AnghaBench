
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct fc_internal {TYPE_3__* f; } ;
struct fc_bsg_rport_els {int dummy; } ;
struct fc_bsg_rport_ct {int dummy; } ;
struct fc_bsg_request {int msgcode; } ;
struct fc_bsg_reply {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_5__ {int payload_len; } ;
struct TYPE_4__ {int payload_len; } ;
struct bsg_job {int request_len; int reply_len; TYPE_2__ reply_payload; TYPE_1__ request_payload; struct fc_bsg_reply* reply; struct fc_bsg_request* request; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_6__ {int (* bsg_request ) (struct bsg_job*) ;} ;


 int BUG_ON (int) ;
 int EBADR ;
 int EINVAL ;
 int ENOMSG ;


 int bsg_job_done (struct bsg_job*,int,scalar_t__) ;
 int stub1 (struct bsg_job*) ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static int fc_bsg_rport_dispatch(struct Scsi_Host *shost, struct bsg_job *job)
{
 struct fc_internal *i = to_fc_internal(shost->transportt);
 struct fc_bsg_request *bsg_request = job->request;
 struct fc_bsg_reply *bsg_reply = job->reply;
 int cmdlen = sizeof(uint32_t);
 int ret;


 if (job->request_len < cmdlen) {
  ret = -ENOMSG;
  goto fail_rport_msg;
 }


 switch (bsg_request->msgcode) {
 case 128:
  cmdlen += sizeof(struct fc_bsg_rport_els);
  goto check_bidi;

 case 129:
  cmdlen += sizeof(struct fc_bsg_rport_ct);
check_bidi:

  if ((!job->request_payload.payload_len) ||
      (!job->reply_payload.payload_len)) {
   ret = -EINVAL;
   goto fail_rport_msg;
  }
  break;
 default:
  ret = -EBADR;
  goto fail_rport_msg;
 }

 ret = i->f->bsg_request(job);
 if (!ret)
  return 0;

fail_rport_msg:

 BUG_ON(job->reply_len < sizeof(uint32_t));
 bsg_reply->reply_payload_rcv_len = 0;
 bsg_reply->result = ret;
 job->reply_len = sizeof(uint32_t);
 bsg_job_done(job, bsg_reply->result,
         bsg_reply->reply_payload_rcv_len);
 return 0;
}
