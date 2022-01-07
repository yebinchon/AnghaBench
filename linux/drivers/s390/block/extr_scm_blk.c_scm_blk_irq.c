
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int retries; scalar_t__ error; } ;
struct scm_device {int dummy; } ;
typedef scalar_t__ blk_status_t ;


 int __scmrq_log_error (struct scm_request*) ;
 int scm_blk_handle_error (struct scm_request*) ;
 int scm_request_finish (struct scm_request*) ;

void scm_blk_irq(struct scm_device *scmdev, void *data, blk_status_t error)
{
 struct scm_request *scmrq = data;

 scmrq->error = error;
 if (error) {
  __scmrq_log_error(scmrq);
  if (scmrq->retries-- > 0) {
   scm_blk_handle_error(scmrq);
   return;
  }
 }

 scm_request_finish(scmrq);
}
