
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct device {int dummy; } ;
struct fc_rport {struct request_queue* rqst_q; struct device dev; } ;
struct fc_internal {TYPE_1__* f; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_2__ {int dd_bsg_size; int bsg_request; } ;


 int BLK_DEFAULT_SG_TIMEOUT ;
 int ENOTSUPP ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int PTR_ERR (struct request_queue*) ;
 int __scsi_init_queue (struct Scsi_Host*,struct request_queue*) ;
 int blk_queue_rq_timeout (struct request_queue*,int ) ;
 struct request_queue* bsg_setup_queue (struct device*,int ,int ,int ,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 int fc_bsg_dispatch_prep ;
 int fc_bsg_job_timeout ;
 struct fc_internal* to_fc_internal (int ) ;

__attribute__((used)) static int
fc_bsg_rportadd(struct Scsi_Host *shost, struct fc_rport *rport)
{
 struct device *dev = &rport->dev;
 struct fc_internal *i = to_fc_internal(shost->transportt);
 struct request_queue *q;

 rport->rqst_q = ((void*)0);

 if (!i->f->bsg_request)
  return -ENOTSUPP;

 q = bsg_setup_queue(dev, dev_name(dev), fc_bsg_dispatch_prep,
    fc_bsg_job_timeout, i->f->dd_bsg_size);
 if (IS_ERR(q)) {
  dev_err(dev, "failed to setup bsg queue\n");
  return PTR_ERR(q);
 }
 __scsi_init_queue(shost, q);
 blk_queue_rq_timeout(q, BLK_DEFAULT_SG_TIMEOUT);
 rport->rqst_q = q;
 return 0;
}
