
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int aob; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int queued_reqs; } ;


 int SCM_LOG (int,char*) ;
 int atomic_inc (int *) ;
 scalar_t__ eadm_start_aob (int ) ;
 int scm_request_requeue (struct scm_request*) ;

__attribute__((used)) static void scm_request_start(struct scm_request *scmrq)
{
 struct scm_blk_dev *bdev = scmrq->bdev;

 atomic_inc(&bdev->queued_reqs);
 if (eadm_start_aob(scmrq->aob)) {
  SCM_LOG(5, "no subchannel");
  scm_request_requeue(scmrq);
 }
}
