
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct fc_bsg_reply {int result; int reply_payload_rcv_len; } ;
struct bsg_job {struct fc_bsg_reply* reply; } ;
struct TYPE_5__ {struct bsg_job* bsg_job; } ;
struct TYPE_6__ {int (* free ) (TYPE_2__*) ;TYPE_1__ u; } ;
typedef TYPE_2__ srb_t ;


 int bsg_job_done (struct bsg_job*,int,int ) ;
 int stub1 (TYPE_2__*) ;

void qla2x00_bsg_job_done(srb_t *sp, int res)
{
 struct bsg_job *bsg_job = sp->u.bsg_job;
 struct fc_bsg_reply *bsg_reply = bsg_job->reply;

 bsg_reply->result = res;
 bsg_job_done(bsg_job, bsg_reply->result,
         bsg_reply->reply_payload_rcv_len);
 sp->free(sp);
}
